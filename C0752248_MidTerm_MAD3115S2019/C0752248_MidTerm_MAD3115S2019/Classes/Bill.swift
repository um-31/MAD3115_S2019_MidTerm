//
//  Bill.swift
//  C0752248_MID_TERM_MAD3004
//
//  Created by hhh on 2019-06-20.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Bill: IDisplay {
    
    let billId: Int?
    var billDate: Date?
    var billType: String?
    var billAmount: Float?
    
    init(billId: Int,billDate: Date,billType: String,billAmount: Float) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.billAmount = billAmount
    }
    
    func display() {
        print("----Bill Information----")
        print("********************************")
        print("Bill Id: ",billId!)
        print("Bill Date: ",billDate!)
        print("Bill Type: ",billType!)
        print("Bill Amount: ",billAmount!)
        
        
    }
}
