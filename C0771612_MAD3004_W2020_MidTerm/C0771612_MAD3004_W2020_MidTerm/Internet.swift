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
    var internetGbUsed : Float
    
    init(_ billIdentificationNumber:Int,_ billDate:Date,_ billType:BillType,_  totalBillAmount:Double,_ providerName:String,_ internetGbUsed:Float)
    {
        self.providerName   = providerName
        self.internetGbUsed = internetGbUsed
        super.init(billIdentificationNumber,billDate,billType,totalBillAmount)
        
        }
    override func Display()
    {
        super.Display()
        print("ProviderName    : \(self.providerName)")
        print("InternetGbUsed  : \(self.internetGbUsed)")
    }
}

