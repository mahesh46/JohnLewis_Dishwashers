//
//  String+entension.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 13/02/2024.
//

import Foundation
import SwiftUI
extension String {

    
    var removeHtmlTags: String {
    var text = self
        text =  text.replacingOccurrences(of: "<ul>", with: "")
        text =  text.replacingOccurrences(of: "</ul>", with: "")
        text =  text.replacingOccurrences(of: "<b>", with: "")
        text =  text.replacingOccurrences(of: "</b>", with: "")
        text =  text.replacingOccurrences(of: "<li>", with: "\n - ")
        text =  text.replacingOccurrences(of: "</li>", with: "")
        text =  text.replacingOccurrences(of: "<p>", with: "\n")
        text =  text.replacingOccurrences(of: "</p>", with: "")
        text =  text.replacingOccurrences(of: "<P>", with: "")
        text =  text.replacingOccurrences(of: "</P>", with: "")
        text =  text.replacingOccurrences(of: "<br>", with: "")
        text =  text.replacingOccurrences(of: "<br />", with: "\n")
        text =  text.replacingOccurrences(of: "<strong>", with: "")
        text =  text.replacingOccurrences(of: "</strong>", with: "")
        return text
    }
    
    var addHttps: String {
        var text = self
        if !text.hasPrefix("https:") {
           text = "https:\(text)"  
        }
        return text
    }
}

