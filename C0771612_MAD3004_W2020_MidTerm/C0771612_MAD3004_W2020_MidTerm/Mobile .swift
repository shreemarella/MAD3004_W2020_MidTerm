//
//  Mobile .swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class Mobile : Bill
{
    var mobileManufacturerName : String
    var planName               : String
    var mobileNumber           : Int
    var internetGbUsed         : Float = 0.0
    var minutesUsed            : Float = 0.0
    
    init(_ billIdentificationNumber:String,_ billDate:Date,_ billType:BillType,_  totalBillAmount:Float,_ mobileManufacturerName:String,_ planName:String,_ mobileNumber:Int,_ internetGbUsed:Float,_ minutesUsed:Float)
    {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName               = planName
        self.internetGbUsed         = internetGbUsed
        self.minutesUsed            = minutesUsed
        self.mobileNumber           = mobileNumber
        super.init(billIdentificationNumber,billDate,billType,totalBillAmount)
        
        if validateMobileNumber(enternumber : mobileNumber)
        {
                 self.mobileNumber       = mobileNumber
        }
             else
             {
                 print("Invalid Mobile Number : \(mobileNumber)")
                 
             }
    }
    
    /*func validateMobileNumber(value: Int) -> Bool {
        let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }*/
  
    /*let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"

   func validateMobileNumber(value: String) -> (Bool, Validationerror) {
       if let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX) {
           if phoneTest.evaluateWithObject(value) {
               return (true, .NoError)
           }
           return (false, .PhoneNumber)
       }
       return (false, .PhoneNumber)
   }*/
    
    override func Display()
    {
        super.Display()
        print("mobileManufacturerName  : \(self.mobileManufacturerName)")
        print("planName                : \(self.planName)")
        print("mobileNumber            : \(self.mobileNumber)")
        print("internetGbUsed          : \(self.internetGbUsed.InternetGb())")
        print("minutesUsed             : \(self.minutesUsed.minutesUsage())")
        
    }
}

