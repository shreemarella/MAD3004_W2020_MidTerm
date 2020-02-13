//
//  Internet.swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class Internet : Bill
{
    var providerName : String
    var internetGbUse : String
    
    init(_ billIdentificationNumber:Int,_ billDate:Date,_ billType:String,_  totalBillAmount:Double,_ providerName:String,_ internetGbUse:String)
    {
        self.providerName   = providerName
        self.internetGbUse = internetGbUse 
        super.init(billIdentificationNumber,billDate,billType,totalBillAmount)
        
        }
    override func Display()
    {
        super.Display()
        print("providerName    : \(self.providerName)")
        print("internetGbUsed  : \(self.internetGbUse)")
    }
}
