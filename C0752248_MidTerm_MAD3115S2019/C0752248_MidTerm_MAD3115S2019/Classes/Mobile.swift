//
//  Mobile.swift
//  C0752248_MID_TERM_MAD3004
//
//  Created by hhh on 2019-06-20.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Mobile: Bill {
    let mobileManufacturer: String?
    var planName: String?
    var mobileNo: Int64?
    var netUsed: Float?
    var minuteUsed: Float?
    
    init(billId: Int, billDate: Date, billType: String, billAmount: Float,mobileManufacturer: String,planName: String,mobileNo: Int64,netUsed: Float,minuteUsed: Float) {
        self.mobileManufacturer = mobileManufacturer
        self.planName = planName
        self.mobileNo = mobileNo
        self.minuteUsed = minuteUsed
        self.netUsed = netUsed
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount: billAmount)
    }
}
