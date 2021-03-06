//
//  Validation.swift
//  Media Finder
//
//  Created by user on 03.06.2020.
//  Copyright © 2020 M.S. All rights reserved.
//

import UIKit

extension UIViewController {

        // validate an email for the right format
       func isValidEmail(email:String?) -> Bool {
           
           guard email != nil else { return false }
           
           let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
           
           let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
           return pred.evaluate(with: email)
       }
       
       // validate an password for the right format
       func isValidPassword(testStr:String?) -> Bool {
           guard testStr != nil else { return false }
           // at least one uppercase,
           // at least one digit
           // at least one lowercase
           // 8 characters total
           let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
           return passwordTest.evaluate(with: testStr)
       }
    
}







