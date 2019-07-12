//
//  CustomerBillViewController.swift
//  C0752248_MidTerm_MAD3115S2019
//
//  Created by hhh on 2019-07-12.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class CustomerBillViewController: UIViewController {

    @IBOutlet weak var lblCustomerId: UILabel!
    @IBOutlet weak var lblCustomerName: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    var cust: Customer?
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCustomerId.text = "Customer Id: \((cust?.customerId)!)"
        lblCustomerName.text = "Customer Name: \((cust?.fullName)!)"
        lblTotal.text = "Total Amount: \((cust?.totalBill)!)"

        // Do any additional setup after loading the view.
    }
    


}
