//
//  BillViewController.swift
//  C0752248_MidTerm_MAD3115S2019
//
//  Created by hhh on 2019-07-11.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class BillViewController: UIViewController {

    @IBOutlet weak var tableViewCustomers: UITableView!
    var customers: [Customer] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        customers = custArray()
        self.tableViewCustomers.dataSource = self
        self.tableViewCustomers.delegate = self
    }
    func custArray() -> [Customer]{
        var tempCust: [Customer] = []
        
        let i1:Internet = Internet.init(billId: 1, billDate: Date(), billType: "Internet", billAmount: 10, providerName: "Rogers", internetUsed: 10.45)
        let c1:Customer = Customer.init(customerId: 111, firstName: "Udhay", lastName: "Mahajan", email: "udaymahajan0@gmail.com", arrayBills: [i1])
        let c2:Customer = Customer.init(customerId: 112, firstName: "Ujwal", lastName: "Arora", email: "ujwalaroa@gmail.com", arrayBills: [i1])
        var c3:Customer = Customer.init(customerId: 113, firstName: "Vipul", lastName: "Garg", email: "vipul12340@gmail.com", arrayBills: [])
        var c4:Customer = Customer.init(customerId: 114, firstName: "Rajvinder", lastName: "Sidhu", email: "rajsidhu@gmail.com", arrayBills: [])
        
        tempCust.append(c1)
        tempCust.append(c2)
        tempCust.append(c3)
        tempCust.append(c4)
        
        return tempCust
    }
    
}
extension BillViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cust = customers[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerCellIdentifier", for: indexPath) as! tblCellTableViewCell
        cell.setLable(customer: cust)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }

}
