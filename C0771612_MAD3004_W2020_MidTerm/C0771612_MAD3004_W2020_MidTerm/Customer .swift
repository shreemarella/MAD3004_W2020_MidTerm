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
    var customerId : String
    var firstName  : String = ""
    var lastName   : String = ""
    var fullName   : String
    {
        return "\(firstName) \(lastName)"
    }
    var emailId     : String?
    lazy var BillsD = [String : Bill]()
    var totalAmountToPay : Float = 0.0
    
    init(_ customerId:String,_ firstName:String,_ lastName:String,/*_ fullName:String,*/_ emailId:String)
    {
        self.customerId = customerId
        self.firstName  = firstName
        self.lastName   = lastName
        //self.fullName   = fullName
        if validateEmail(enteredEmail : emailId)
        {
        self.emailId = emailId
        }
        else
        {
            print("Invalid Email Id  : \(emailId)  for this customer ID \(customerId)") //
        }
    }
    
   //https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift used reference from here for email validation process
      //https://regexr.com/ used for regex reader
      
    func validate(value: String) -> Bool {
        let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
      
      func validateEmail(enteredEmail:String) -> Bool
      {

          let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
          let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
          return emailPredicate.evaluate(with: enteredEmail)

      }
    
    func totalBill() -> Float
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
        print("\t ************Customer Details**************")
        print("customerId    : \(self.customerId)")
        //print("firstName     : \(self.firstName)")
        //print("lastName      : \(self.firstName)")
        print("fullName      : \(self.fullName)")
        print("emailId       : \(String(describing: self.emailId))")
        print("\t         -----Bill Information-----          ")
        print("\t *********************************************")
        
        for b in BillsD
        {
            b.value.Display()
            print("\t ******************************************")
        }
        
        if BillsD.count == 0
        {
            print("No Bills Found")
        }
        else
        {
            print("\t Total Bill Amount To Pay : \(totalBill().totalBillAmount())")
            print("\t *********************************************")
        }
        
    }
}
