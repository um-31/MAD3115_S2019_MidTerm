//
//  Internet.swift
//  C0752248_MID_TERM_MAD3004
//
//  Created by hhh on 2019-06-20.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Internet: Bill {
    let providerName: String?
    var internetUsed: Float?
    
    init(billId: Int, billDate: Date, billType: String, billAmount: Float,providerName: String,internetUsed: Float) {
        self.providerName = providerName
        self.internetUsed = internetUsed
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount: billAmount)
    }
    
}
