//
//  Customer.swift
//  C0752248_MID_TERM_MAD3004
//
//  Created by hhh on 2019-06-20.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Customer: Bill{
    
    let customerId: Int?
    var firstName: String?
    var lastName: String?
    var fullName: String{
        return "\(firstName!) \(lastName!)"
    }
    let email: String?
    var arrayBills: [Bill]?
    var totalBill: Float{
    var Total:Float = 0.0
        for bills in arrayBills! {
            Total = Total + bills.billAmount!
    }
        return Total
    }
    
    init(billId: Int,billDate: Date,billType: String,billAmount: Float,customerId: Int,firstName: String,lastName: String,email: String,arrayBills: [Bill]) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.arrayBills = arrayBills
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount: billAmount)
    }

}
