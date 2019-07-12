//
//  main.swift
//  C0752248_MID_TERM_MAD3004
//
//  Created by hhh on 2019-06-20.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

//Internet Objects
var i1:Internet = Internet.init(billId: 1, billDate: Date(), billType: "Internet", billAmount: 10, providerName: "Rogers", internetUsed: 10.45)
var i2:Internet = Internet.init(billId: 2, billDate: Date(), billType: "Internet", billAmount: 30, providerName: "Bell", internetUsed: 8.23)
var i3:Internet = Internet.init(billId: 3, billDate: Date(), billType: "Internet", billAmount: 40, providerName: "Wireless", internetUsed: 5.30)
var i4:Internet = Internet.init(billId: 4, billDate: Date(), billType: "Internet", billAmount: 45, providerName: "Comwave", internetUsed: 8.30)

//Mobile Objects
var m1:Mobile = Mobile.init(billId: 11, billDate: Date(), billType: "Mobile", billAmount: 20, mobileManufacturer: "Apple", planName: "Ultra-Tab", mobileNo: 6478667679, netUsed: 10, minuteUsed: 100)
var m2:Mobile = Mobile.init(billId: 12, billDate: Date(), billType: "Mobile", billAmount: 26, mobileManufacturer: "Samnsung", planName: "Premium-Tab", mobileNo: 6476795678, netUsed: 10.2, minuteUsed: 80)
var m3:Mobile = Mobile.init(billId: 13, billDate: Date(), billType: "Mobile", billAmount: 37, mobileManufacturer: "Google", planName: "Google-Tab", mobileNo: 6478623451, netUsed: 8.6, minuteUsed: 120)

//Hydro Objects
var h1:Hydro = Hydro.init(billId: 21, billDate: Date(), billType: "Hydro", billAmount: 47, agencyName: "Toronto Hydro", unitsConsumed: 20)
var h2:Hydro = Hydro.init(billId: 22, billDate: Date(), billType: "Hydro", billAmount: 78, agencyName: "Toronto Hydro", unitsConsumed: 25)
var h3:Hydro = Hydro.init(billId: 23, billDate: Date(), billType: "Hydro", billAmount: 35, agencyName: "Toronto Hydro", unitsConsumed: 34)

//Customer Objects
var c1:Customer = Customer.init(customerId: 111, firstName: "Udhay", lastName: "Mahajan", email: "udaymahajan0@gmail.com", arrayBills: [i1,m1,h1])
//c1.display()
var c2:Customer = Customer.init(customerId: 112, firstName: "Ujwal", lastName: "Arora", email: "ujwalaroa@gmail.com", arrayBills: [i2,m2,h2])
//c2.display()
var c3:Customer = Customer.init(customerId: 113, firstName: "Vipul", lastName: "Garg", email: "vipul12340@gmail.com", arrayBills: [i3,i4,m3,h3])
//c3.display()
var c4:Customer = Customer.init(customerId: 114, firstName: "Rajvinder", lastName: "Sidhu", email: "rajsidhu@gmail.com", arrayBills: [])
//c4.display()

c1.display(customerId: 111)
c2.display(customerId: 114)
