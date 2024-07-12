//
//  ContentView.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import SwiftUI

struct ContentView: View {
   
    @StateObject var mainViewModel = MainViewModel(service: NetworkService())
    
    let columnsOne = [GridItem(.fixed(400), spacing: 1)]
    let columnsTwo = [GridItem(.fixed(400), spacing: 1), GridItem(.fixed(400), spacing: 1)]
    let columnsThree = [GridItem(.fixed(400), spacing: 1), GridItem(.fixed(400), spacing: 1), GridItem(.fixed(400), spacing: 1)]
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: mainViewModel.columns ) {
                    ForEach(mainViewModel.products ?? [Products](), id: \.productId ) { item in
                        NavigationLink(destination:  ProductDetailUIView(productId: item.productId ?? "")) {
                            VStack{
                                
                                AsyncImage(url: URL(string: "https:\(item.image!)")) { phase in
                                    switch phase {
                                    case .empty:
                                        ProgressView()
                                    case .success(let image):
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(maxWidth: 300, maxHeight: 400)
                                    case .failure:
                                        //Call the AsynchImage 2nd time - when there is a failure. (I think you can also check NSURLErrorCancelled = -999)
                                        AsyncImage(url: URL(string: "https:\(item.image!)")) { phase in
                                            if let image = phase.image {
                                                image
                                                    .resizable()
                                                // .scaledToFill()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(maxWidth: 300, maxHeight: 400)
                                                    .accessibility(identifier: "productImage")
                                            } else{
                                                Image(systemName: "xmark.octagon")
                                            }
                                        }
                                      
                                    @unknown default:
                                        // Since the AsyncImagePhase enum isn't frozen,
                                        // we need to add this currently unused fallback
                                        // to handle any new cases that might be added
                                        // in the future:
                                        EmptyView()
                                    }
                                }
                                
                                Text(item.title!)
                                    .foregroundColor(.secondary)
                                    .accessibility(identifier: "productTitle")
                                HStack (spacing: 1) {
                                    Text("£")
                                    Text(item.price?.now ?? "")
                                        
                                }.font(.body)
                                 .foregroundColor(.black)
                                 .accessibility(identifier: "productPrice")
                                
                            }.padding(8)
                        }
                    }
                    
                }
            }
            .navigationTitle("Dishwashers (\(mainViewModel.products?.count ?? 0))")
            .navigationBarTitleDisplayMode(.inline)
        } 
        
        .task {
            
            do {
                try await mainViewModel.getMainProducts()
            } catch  {
                print(error.localizedDescription)
            }
        }
        .listStyle(.grouped)
        .onAppear() {
            checkOrientation()
        }
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
            print(UIDevice.current.orientation.rawValue)
            checkOrientation()
        }
    }
    
    func checkOrientation() {
        if UIDevice.isIPad {
            if (UIDevice.current.orientation.rawValue == 1 || UIDevice.current.orientation.rawValue == 2 || UIDevice.current.orientation.rawValue == 0) {
                mainViewModel.updateCloumns(columns: columnsTwo)
            } else {
                mainViewModel.updateCloumns(columns: columnsThree)
            }
        }
        if UIDevice.isIPhone {
            if (UIDevice.current.orientation.rawValue == 1 || UIDevice.current.orientation.rawValue == 0 ) {
                mainViewModel.updateCloumns(columns: columnsOne)
            } else  {
                mainViewModel.updateCloumns(columns: columnsTwo)
            }
        }
    }
    
}

#Preview {
    ContentView()
}
