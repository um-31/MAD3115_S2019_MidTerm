//
//  Customer.swift
//  C0752248_MID_TERM_MAD3004
//
//  Created by hhh on 2019-06-20.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Customer: IDisplay{
    
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
    
    init(customerId: Int,firstName: String,lastName: String,email: String,arrayBills: [Bill]) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.arrayBills = arrayBills
    }
    
    var temp: Int = 0
    func display() {
        print("Customer Id: ",customerId!)
        print("Full Name: ",fullName)
        print("Email: ",email!)
        print("----Bill Information----")
        
        if arrayBills!.count == 0 {
            print("~~~NOTE : This Customer has no bills")
            temp = temp + 1
        }else
        {
        for bill in self.arrayBills! {
            bill.display()
        }
        }
        if(temp == 0){
        print("********************************")
        print("Total Amount to Pay: ",totalBill.dollar())
        print("********************************")
        }
        print("")
        print("")
    }
    
    func display(customerId: Int) {
        print("")
        print("Customer Id: ",customerId)
        print("Full Name: ",fullName)
        print("Email: ",email!)
    }
}
