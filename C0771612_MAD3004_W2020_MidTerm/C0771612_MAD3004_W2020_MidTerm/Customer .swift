//
//  Customer .swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class Customer : IDisplay
{
    var customerId : Int
    var firstName  : String = ""
    var lastName   : String = ""
    var fullName   : String
    {
        return "\(firstName) \(lastName)"
    }
    var emailId     : String
    lazy var BillsD = [String : Bill]()
    var totalAmountToPay : Double = 0.0
    
    init(_ customerId:Int,_ firstName:String,_ lastName:String,/*_ fullName:String,*/_ emailId:String)
    {
        self.customerId = customerId
        self.firstName  = firstName
        self.lastName   = lastName
        //self.fullName   = fullName
        self.emailId    = emailId
    }
    
    func totalBill() -> Double
    {
        for b in BillsD
        {
            totalAmountToPay += b.value.totalBillAmount
        }
        return totalAmountToPay
    }
    
    
    func insertbills(Bills : Bill, customerId : String)
    {
        BillsD.updateValue(Bills, forKey : customerId)
    }
    
     func Display()
    {
        print("************Customer Details**************")
        print("customerId    : \(self.customerId)")
        //print("firstName     : \(self.firstName)")
        //print("lastName      : \(self.firstName)")
        print("fullName      : \(self.fullName)")
        print("emailId       : \(self.emailId)")
        print("         -----Bill Information-----          ")
        print("*********************************************")
        
        for b in BillsD
        {
            b.value.Display()
            print("******************************************")
        }
        
        if BillsD.count == 0
        {
            print("No Bills Found")
        }
        else
        {
            print("Total Bill Amount To Pay : \(String(describing: totalBill))")
            print("*********************************************")
        }
        
    }
}
