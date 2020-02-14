//
//  Customer .swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

class Customer
{
    var customerId : Int
    var firstName  : String = ""
    var lastName   : String = ""
    var fullName   : String
    {
        return "\(firstName) \(lastName)"
    }
    var emailId     : String
    
    init(_ customerId:Int,_ firstName:String,_ lastName:String,/*_ fullName:String,*/_ emailId:String)
    {
        self.customerId = customerId
        self.firstName  = firstName
        self.lastName   = lastName
        //self.fullName   = fullName
        self.emailId    = emailId
    }
     func Display()
    {
        print("************Customer Details**************")
        print("customerId    : \(self.customerId)")
        //print("firstName     : \(self.firstName)")
        //print("lastName      : \(self.firstName)")
        print("fullName      : \(self.fullName)")
        print("emailId       : \(self.emailId)")
    }
}
