//
//  Hydro.swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class Hydro : Bill
{
    var agencyName : String
    var unitsConsumed : Int
    
    init(_ billIdentificationNumber:Int,_ billDate:Date,_ billType:BillType,_  totalBillAmount:Double,_ agencyName:String,_ unitsConsumed:Int)
    {
        self.agencyName = agencyName
        self.unitsConsumed = unitsConsumed
        super.init(billIdentificationNumber,billDate,billType,totalBillAmount)
    }
    override func Display()
    {
        super.Display()
        print("Agency Name    : \(self.agencyName) ")
        print("Units Consumed : \(self.unitsConsumed)")
        
    }
}
