//
//  Bill.swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

enum BillType
{
    case Mobile,Internet,Hydro
}


class Bill : IDisplay
{

    var billIdentificationNumber : String
    var billDate                 : Date
    var billType                 : BillType
    var totalBillAmount          : Float = 0
    
    init(_ billIdentificationNumber:String,_ billDate:Date,_ billType:BillType,_ totalBillAmount:Float)
    {
        self.billIdentificationNumber = billIdentificationNumber
        self.billDate                 = billDate
        self.billType                 = billType
        self.totalBillAmount          = totalBillAmount
        
    }
    func  Display()
    {
        print("Bill IdentificationNumber  : \(self.billIdentificationNumber)")
        print("Bill Date                  : \(self.billDate)")
        print("Bill Type                  : \(self.billType)")
        print("Total Bill Amount           : \(self.totalBillAmount.totalBillAmount())")
    }
    }
