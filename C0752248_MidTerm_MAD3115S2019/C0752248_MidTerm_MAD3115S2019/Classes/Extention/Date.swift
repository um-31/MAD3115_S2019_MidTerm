//
//  Date.swift
//  C0752248_MID_TERM_MAD3004
//
//  Created by hhh on 2019-06-20.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

extension Date{
    public func dateFormat() -> String{
        let format = DateFormatter()
        format.dateFormat = "EEEE, dd MMMM, yyyy"
        let finalDate = format.string(from: self)
        return finalDate
    }
}
