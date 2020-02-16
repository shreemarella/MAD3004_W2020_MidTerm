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
//b1.Display()
//b2.Display()
//b3.Display()

var m1=Mobile("MB001", Date(), BillType.Mobile, 250.69, "Galaxy Samsung Inc.",  "Prepaid Talk + Text plan", +11234567890, 7.89, 356)
var m2=Mobile("MB002", Date(), BillType.Mobile, 300.78, "Apple Inc. iPhone XI MAX Pro",  "LTE+3G 9.5GB Promo plan", +19012345678, 8.90, 230)

var h1=Hydro("HD001", Date(), BillType.Hydro, 45.35, "Planet Energy", 29)
var h2=Hydro("HD002", Date(), BillType.Hydro, 55.65, "Toronto Saver", 56)
var h3=Hydro("HD003", Date(), BillType.Hydro, 73.21, "Blue Fox Energy", 65)

var i1=Internet("IN001", Date(), BillType.Internet, 56.50, "Rogers", 500)
var i2=Internet("IN002", Date(), BillType.Internet, 45.98, "Freedom", 365)

c1.insertbills(Bills: m1, customerId: "\(m1.billIdentificationNumber)")
c1.insertbills(Bills: h1, customerId: "\(h1.billIdentificationNumber)")
c1.insertbills(Bills: i1, customerId: "\(i1.billIdentificationNumber)")
//c1.Display()

c2.insertbills(Bills: m2, customerId: "\(m2.billIdentificationNumber)")
c2.insertbills(Bills: h2, customerId: "\(h2.billIdentificationNumber)")
c2.insertbills(Bills: i2, customerId: "\(i2.billIdentificationNumber)")
//c2.Display()


c3.insertbills(Bills: h3, customerId: "\(h3.billIdentificationNumber)")
//c3.Display()





