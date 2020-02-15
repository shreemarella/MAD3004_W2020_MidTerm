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
    var internetGbUsed         : Float
    var minutesUsed            : Float
    
    init(_ billIdentificationNumber:Int,_ billDate:Date,_ billType:BillType,_  totalBillAmount:Double,_ mobileManufacturerName:String,_ planName:String,_ mobileNumber:Int,_ internetGbUsed:Float,_ minutesUsed:Float)
    {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName               = planName
        self.mobileNumber           = mobileNumber
        self.internetGbUsed         = internetGbUsed
        self.minutesUsed            = minutesUsed
        super.init(billIdentificationNumber,billDate,billType,totalBillAmount)
    }
    override func Display()
    {
        super.Display()
        print("mobileManufacturerName  : \(self.mobileManufacturerName)")
        print("planName                : \(self.planName)")
        print("mobileNumber            : \(self.mobileNumber)")
        print("internetGbUsed          : \(self.internetGbUsed)")
        print("minutesUsed             : \(self.minutesUsed)")
        
    }
}

