//
//  Float Extension.swift
//  C0771612_MAD3004_W2020_MidTerm
//
//  Created by Shree Marella on 2020-02-14.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation

//https://cocoacasts.com/four-clever-uses-of-swift-extensions used help for extensions

extension Float
{
    func InternetGb() -> String
    {
        return "\(self) GB"
    }
    func minutesUsage() -> String
    {
        return "\(self) Minutes"
    }
    func totalBillAmount() -> String
    {
        return "\(self) $"
    }
}
