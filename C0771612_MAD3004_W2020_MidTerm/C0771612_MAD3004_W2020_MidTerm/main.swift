//
//  main.swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation


var c1=Customer("C001", "Shree", "Marella", "mvsrikanth96@gmail.com")
var c2=Customer("C002", "Prem", "rajan", "premrajan@gmail.com")
var c3=Customer("C003", "Harsha", "Dama", "harshadama2312@gmail.com")

var b1=Bill("B001", Date(), BillType.Hydro, 50)
var b2=Bill("B002", Date(), BillType.Internet, 75.89 )
var b3=Bill("B003", Date(), BillType.Mobile, 125)
b1.Display()
b2.Display()
b3.Display()





