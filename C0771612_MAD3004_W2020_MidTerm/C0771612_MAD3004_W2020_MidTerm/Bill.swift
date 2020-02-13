//
//  Bill.swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class Bill : IDisplay
{

    var billIdentificationNumber : Int
    var billDate                 : Date
    var billType                 : String
    var totalBillAmount          : Double
    
    init(_ billIdentificationNumber:Int,_ billDate:Date,_ billType:String,_  totalBillAmount:Double)
    {
        self.billIdentificationNumber = billIdentificationNumber
        self.billDate                 = billDate
        self.billType                 = billType
        self.totalBillAmount          = totalBillAmount
    }
    func  Display()
    {
        print("billIdentificationNumber  : \(self.billIdentificationNumber)")
        print("billDate                  : \(self.billDate)")
        print("billType                  : \(self.billType)")
        print("totalBillAmount           : \(self.totalBillAmount)")
    }
    }
