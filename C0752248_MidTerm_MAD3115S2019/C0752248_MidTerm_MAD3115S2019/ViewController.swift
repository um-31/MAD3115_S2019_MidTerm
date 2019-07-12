//
//  ViewController.swift
//  C0752248_MidTerm_MAD3115S2019
//
//  Created by hhh on 2019-07-11.
//  Copyright © 2019 hhh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var switchRemember: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    private func getRememberMeValues() {
        let userDefault = UserDefaults.standard
        if let email = userDefault.string(forKey: "userEmail") {
            txtUsername.text = email
            if let pwd = userDefault.string(forKey: "userPassword") {
                txtPassword.text = pwd
            }
        }
    }
    
    @IBAction func btnLogin(_ sender: UIBarButtonItem) {
        if self.txtUsername.text == "admin@gmail.com" && self.txtPassword.text == "123456"
        {
            let userDefault = UserDefaults.standard
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let  userVC = storyBoard.instantiateViewController(withIdentifier: "BillListIdentifier") as! BillViewController
            self.present(userVC, animated: true, completion: nil)
            
            if switchRemember.isOn{
                userDefault.setValue(txtUsername.text, forKey: "userEmail")
                userDefault.set(txtPassword.text, forKey: "userPassword")
            }else {
                userDefault.removeObject(forKey: "userEmail")
                userDefault.removeObject(forKey: "userPassword")
            }
        }else {
            let alert = UIAlertController(title: "Error", message: "Invalid Username or Password", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
    @IBAction func unWindLogoutFromAnyScreen(storyboardSegue: UIStoryboardSegue) {
        let s = storyboardSegue.source as! BillViewController
        txtPassword.text = ""
        txtUsername.text = ""
    }

}

