//
//  BillViewController.swift
//  C0752248_MidTerm_MAD3115S2019
//
//  Created by hhh on 2019-07-11.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class BillViewController: UIViewController {

    @IBOutlet weak var tblCustomers: UITableView!
    
    var customers = [c1,c2,c3,c4]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblCustomers.dataSource = self
        self.tblCustomers.delegate = self

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension BillViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(self.customers.count)
        return self.customers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerCellIdentifier") as! tblCellTableViewCell
        for i in customers{
            cell.lblCustomerName.text = String(i.fullName)
        }
        return cell
    }
    
    
}
