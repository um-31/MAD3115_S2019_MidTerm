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
        let i2:Internet = Internet.init(billId: 2, billDate: Date(), billType: "Internet", billAmount: 30, providerName: "Bell", internetUsed: 8.23)
        let i3:Internet = Internet.init(billId: 3, billDate: Date(), billType: "Internet", billAmount: 40, providerName: "Wireless", internetUsed: 5.30)
        let i4:Internet = Internet.init(billId: 4, billDate: Date(), billType: "Internet", billAmount: 45, providerName: "Comwave", internetUsed: 8.30)
        //Mobile Objects
        let m1:Mobile = Mobile.init(billId: 11, billDate: Date(), billType: "Mobile", billAmount: 20, mobileManufacturer: "Apple", planName: "Ultra-Tab", mobileNo: 6478667679, netUsed: 10, minuteUsed: 100)
        let m2:Mobile = Mobile.init(billId: 12, billDate: Date(), billType: "Mobile", billAmount: 26, mobileManufacturer: "Samnsung", planName: "Premium-Tab", mobileNo: 6476795678, netUsed: 10.2, minuteUsed: 80)
        let m3:Mobile = Mobile.init(billId: 13, billDate: Date(), billType: "Mobile", billAmount: 37, mobileManufacturer: "Google", planName: "Google-Tab", mobileNo: 6478623451, netUsed: 8.6, minuteUsed: 120)
        
        //Hydro Objects
        let h1:Hydro = Hydro.init(billId: 21, billDate: Date(), billType: "Hydro", billAmount: 47, agencyName: "Toronto Hydro", unitsConsumed: 20)
        let h2:Hydro = Hydro.init(billId: 22, billDate: Date(), billType: "Hydro", billAmount: 78, agencyName: "Toronto Hydro", unitsConsumed: 25)
        let h3:Hydro = Hydro.init(billId: 23, billDate: Date(), billType: "Hydro", billAmount: 35, agencyName: "Toronto Hydro", unitsConsumed: 34)

        let c1:Customer = Customer.init(customerId: 111, firstName: "Udhay", lastName: "Mahajan", email: "udaymahajan0@gmail.com", arrayBills: [i1,m1,h1])
        let c2:Customer = Customer.init(customerId: 112, firstName: "Ujwal", lastName: "Arora", email: "ujwalaroa@gmail.com", arrayBills: [i2,m2,h2])
        let c3:Customer = Customer.init(customerId: 113, firstName: "Vipul", lastName: "Garg", email: "vipul12340@gmail.com", arrayBills: [i3,m3,h3])
        let c4:Customer = Customer.init(customerId: 114, firstName: "Rajvinder", lastName: "Sidhu", email: "rajsidhu@gmail.com", arrayBills: [i4,m3,h3])
        
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CustomerBillViewController{
            destination.cust = customers[(tableViewCustomers.indexPathForSelectedRow?.row)!]
        }
    }

}
