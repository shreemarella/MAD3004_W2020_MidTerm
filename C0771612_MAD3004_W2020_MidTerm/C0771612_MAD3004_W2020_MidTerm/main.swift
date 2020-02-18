//
//  main.swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-13.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

//https://developer.apple.com/documentation/foundation/dateformatter took reference for date function
//https://medium.com/@tjcarney89/using-dateformatter-to-format-dates-and-times-from-apis-57622ce11d04 took reference for dateformat
// https://nsscreencast.com/episodes/367-dates-and-times

extension Date
{
public func getFormattedDate() -> String
{
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"
    let formattedDate = dateFormatter.string(from: self)
    return formattedDate
}
    static func from(year: Int, month: Int, day: Int) -> Date?
    {
        let calendar = Calendar(identifier: .gregorian)
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        return calendar.date(from: dateComponents) ?? nil
    }
}



/*let newDateFormatter = dateFormatter
newDateFormatter.dateFormat = "MMM d"*/

/*let date = Date(timeIntervalSinceReferenceDate: 410220000)
 // US English Locale (en_US)
dateFormatter.locale = Locale(identifier: "en_US")
dateFormatter.setLocalizedDateFormatFromTemplate("MMMMd") // set template after setting locale
print(dateFormatter.string(from: date)) // December 31*/


var c1=Customer("C001", "Shree", "Marella", "mvsrikanth96@gmail.com")
var c2=Customer("C002", "Prem", "rajan", "premrajan@gmail.com")
var c3=Customer("C003", "Harsha", "Dama", "harshadama2312@gmail.com")

//get invalid email id since the input we gave has a wrong regex that of we given in function code


var b1=Bill("B001", Date.from(year: 2018, month: 10, day: 15) ?? Date(), BillType.Hydro, 50)
var b2=Bill("B002", Date.from(year: 2017, month: 06, day: 16) ?? Date(), BillType.Internet, 75.89 )
var b3=Bill("B003", Date.from(year: 2019, month: 02, day: 08) ?? Date(), BillType.Mobile, 125)
//b1.Display()
//b2.Display()
//b3.Display()

var m1=Mobile("MB001", Date.from(year: 2018, month: 07, day: 08) ?? Date(), BillType.Mobile, 250.69, "Galaxy Samsung Inc.",  "Prepaid Talk + Text plan", "+11234567890", 7.89, 356)
//m1.Display()

var m2=Mobile("MB002", Date.from(year: 2018, month: 09, day: 15) ?? Date(), BillType.Mobile, 300.78, "Apple Inc. iPhone XI MAX Pro",  "LTE+3G 9.5GB Promo plan", "+19012345678", 8.90, 230)

var h1=Hydro("HD001", Date.from(year: 2019, month: 08, day: 09) ?? Date(), BillType.Hydro, 45.35, "Planet Energy", 29)
var h2=Hydro("HD002", Date.from(year: 2018, month: 10, day: 25) ?? Date(), BillType.Hydro, 55.65, "Toronto Saver", 56)
var h3=Hydro("HD003", Date.from(year: 2019, month: 02, day: 09) ?? Date(), BillType.Hydro, 73.21, "Blue Fox Energy", 65)

var i1=Internet("IN001", Date.from(year: 2019, month: 10, day: 14) ?? Date(), BillType.Internet, 56.50, "Rogers", 500)
var i2=Internet("IN002", Date.from(year: 2018, month: 09, day: 07) ?? Date(), BillType.Internet, 45.98, "Freedom", 365)


var in1=Insurance("In001", Date.from(year: 2019, month: 04, day: 15) ?? Date(), BillType.Insurance, 7000, "Drone", InsuranceType.CAR, Date.from(year: 2018, month: 01, day: 01) ?? Date() ,Date.from(year: 2019, month: 01, day: 01) ?? Date(), 365, 10000)
c1.insertbills(Bills: m1, customerId: "\(m1.billIdentificationNumber)")
c1.insertbills(Bills: h1, customerId: "\(h1.billIdentificationNumber)")
c1.insertbills(Bills: i1, customerId: "\(i1.billIdentificationNumber)")
c1.Display()

c2.insertbills(Bills: m2, customerId: "\(m2.billIdentificationNumber)")
c2.insertbills(Bills: h2, customerId: "\(h2.billIdentificationNumber)")
//c2.insertbills(Bills: i2, customerId: "\(i2.billIdentificationNumber)")
c2.Display()


c3.insertbills(Bills: h3, customerId: "\(h3.billIdentificationNumber)")
c3.insertbills(Bills: in1, customerId: "\(in1.billIdentificationNumber)")
c3.Display()

var c4=Customer("c004", "shawn", "Marcell", "asdkajshdka.sd")
c4.Display()

var m3=Mobile("MB003", Date.from(year: 2018, month: 11, day: 15) ?? Date(), BillType.Mobile, 300.78, "Apple Inc. iPhone XI MAX Pro",  "LTE+3G 9.5GB Promo plan", "+1901234", 8.90, 230)
m3.Display()




