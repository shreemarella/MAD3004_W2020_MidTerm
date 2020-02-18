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
        print(" \t Bill IdentificationNumber   : \(self.billIdentificationNumber)")
        print(" \t Bill Date                   : \(self.billDate.getFormattedDate())")
        print(" \t Bill Type                   : \(self.billType)")
        print(" \t Total Bill Amount           : \(self.totalBillAmount.totalBillAmount())")
    }
    }
