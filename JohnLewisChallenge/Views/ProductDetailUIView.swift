//
//  ProductDetailUIView.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 13/02/2024.
//

import SwiftUI

struct ProductDetailUIView: View {

   

        @StateObject var detailViewModel = DetailViewModel(service: NetworkService())
        @State private var currentIndex = 0
        var productId: String
        var body: some View {
            ScrollView {
                VStack (alignment: .leading, spacing: 6) {
                    
                    VStack {
                        ZStack {
                            ForEach(0..<(detailViewModel.urlsCount), id:\.self) { index in
                                
                                AsyncImage(url: URL(string: "\((detailViewModel.urls[index] ).addHttps)")) { phase in
                                    switch phase {
                                    case .empty:
                                        ProgressView()
                                    case .success(let image):
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(minWidth: 300, maxHeight: 400)
                                            .opacity(index == currentIndex ? 1 : 0)
                                        
                                    case .failure:
                                        
                                        Image(systemName: "photo")
                                    @unknown default:
                                        // Since the AsyncImagePhase enum isn't frozen,
                                        // we need to add this currently unused fallback
                                        // to handle any new cases that might be added
                                        // in the future:
                                        EmptyView()
                                    }
                                }
                                
                            }
                            .frame(height: 400)
                            .gesture(
                                DragGesture(minimumDistance: 50)
                                    .onEnded { value in
                                        if value.translation.width < 0 && currentIndex < detailViewModel.urlsCount - 1 {
                                            // Swipe left
                                            withAnimation {
                                                currentIndex += 1
                                            }
                                        } else if value.translation.width > 0 && currentIndex > 0 {
                                            // Swipe right
                                            withAnimation {
                                                currentIndex -= 1
                                            }
                                        }
                                    }
                            )
                            
                            HStack(spacing: 10) {
                                ForEach(0..<detailViewModel.urlsCount, id: \.self) { index in
                                    Circle()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(index == currentIndex ? .black : .gray)
                                        .onTapGesture {
                                            withAnimation {
                                                currentIndex = index
                                            }
                                        }
                                }
                            }
                            .padding(.top, 420)
                        }
                    }
      
                
                Spacer()
                HStack(spacing: 1) {
                    Text("£")
                    Text(detailViewModel.product?.skus?.first?.price?.now ?? "")
                }.font(.title)
                 .foregroundColor(.black)
                 .accessibility(identifier: "productPrice")
               
                //displaySpecialOffer
                Text(detailViewModel.product?.displaySpecialOffer ?? "")
                    .foregroundColor(.red)
                //additional Service
                Text(detailViewModel.product?.additionalServices?.includedServices?.first ?? "")
                   
                Divider()
                Text("Product Information")
                    .font(.headline)
                    .accessibility(identifier: "productInformationLabel")
                Text(detailViewModel.product?.details?.productInformation?.removeHtmlTags ?? "")
                    .font(.subheadline)
                    .accessibility(identifier: "productInformation")
                Spacer()
                HStack {
                    Text("Product code:")
                    Text(detailViewModel.product?.skus?.first?.code ?? "")
                } .accessibility(identifier: "productCode")

                
                Divider()
                Text("Product Specification")
                    .font(.headline)
                    .accessibility(identifier: "productSpecification")
                Divider()
                
                ForEach((detailViewModel.arrtibutes ?? [Attributes]())) { item in
                    HStack{
                        Text(item.name ?? "")
                        Spacer()
                        Text(item.value ?? "")
                    }.font(.subheadline)
                    
                    Divider()
                }
                .navigationTitle(detailViewModel.product?.title ?? "")
                .navigationBarTitleDisplayMode(.inline)
            }
            .padding(.trailing, 24)
            .padding(.leading, 24)
            .task {
                do {
                    try await detailViewModel.getMainProducts(productId: productId)
                } catch  {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    ProductDetailUIView( productId: "1955287" )
}
