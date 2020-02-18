//
//  Insurance.swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-18.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

enum InsuranceType
{
    case HOME,CAR,STUDY
}
class Insurance : Bill
{
    var insuranceProviderName   : String
    var typeOfInsurance         : InsuranceType
    var startDate               : Date
    var endDate                 : Date
    var totalDays               : Int
    var totalInstallmentsAmount : Float
    
    init(_ billIdentificationNumber:String,_ billDate:Date,_ billType:BillType,_ totalBillAmount:Float,_ insuranceProviderName:String,_ typeOfInsurance:InsuranceType,_ startDate:Date,_ endDate:Date,_ totalDays:Int,_ totalInstallmentsAmount:Float)
    {
        self.insuranceProviderName   = insuranceProviderName
        self.typeOfInsurance         = typeOfInsurance
        self.startDate               = startDate
        self.endDate                 = endDate
        self.totalDays               = totalDays
        self.totalInstallmentsAmount = totalInstallmentsAmount
        super.init(billIdentificationNumber,billDate,billType,totalBillAmount)
    }
    
    override func Display()
    {
        super.Display()
        print(" \t Insurance Provider Name : \(self.insuranceProviderName)")
        print(" \t Type Of Insurance       : \(self.typeOfInsurance)")
        print(" \t Start Date              : \(self.startDate)")
        print(" \t End Date                : \(self.endDate)")
        print(" \t Total Days              : \(self.totalDays)")
        print(" \t totalInstallmentsAmount : \(self.totalInstallmentsAmount.totalBillAmount())")
    }
    
    
    
}
