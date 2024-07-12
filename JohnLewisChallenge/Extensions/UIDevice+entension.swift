//
//  UIDevice+entension.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 13/02/2024.
//

import UIKit

extension UIDevice {
    static var isIPad: Bool {
        UIDevice.current.model == "iPad" ? true : false
    }
    
    static var isIPhone: Bool {
        UIDevice.current.model == "iPhone" ? true : false
    }

}
