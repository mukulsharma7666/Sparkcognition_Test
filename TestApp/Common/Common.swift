//
//  Common.swift
//  MvvmDemoApp
//
//  Created by CodeCat15 on 3/14/20.
//  Copyright © 2020 Codecat15. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    static let ErrorAlertTitle = "Error"
    static let OkAlertTitle = "Ok"
    static let CancelAlertTitle = "Cancel"
}

struct ApiEndpoints
{
    static let main = "https://jsonkeeper.com/b/XXFE"
  
}

// for extention call
extension UIView {
func makeRounded() {
    self.layer.cornerRadius = self.frame.size.width/2
    self.clipsToBounds = true
}

func makeRoundCorner(_ radius:CGFloat) {
    self.layer.cornerRadius = radius
    self.clipsToBounds = true
}
}


extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}


extension Int
{
    func toString() -> String
    {
        let myString = String(self)
        return myString
    }
}
