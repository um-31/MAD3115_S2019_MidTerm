//
//  tblCellTableViewCell.swift
//  C0752248_MidTerm_MAD3115S2019
//
//  Created by hhh on 2019-07-12.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class tblCellTableViewCell: UITableViewCell {
    
    var custID: Int = 0
    @IBOutlet weak var lblCustomerName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setLable(customer: Customer) {
        custID = customer.customerId!
        lblCustomerName.text = customer.fullName
    }
}
