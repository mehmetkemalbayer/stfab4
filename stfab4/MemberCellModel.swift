//
//  MemberCellModel.swift
//  stfab4
//
//  Created by MKB on 14/02/2018.
//  Copyright © 2018 MKB. All rights reserved.
//

import Foundation

class MemberCellModel {
    init(id:String, memberTitle:String, apartmentNumber:String, state:Bool, carIn:String, carTotal:String) {
        self.memberTitle = memberTitle
        self.apartmentNumber = apartmentNumber
        self.state = state
        self.carIn = carIn
        self.carTotal = carTotal
        self.id = id
    }
    var memberTitle:String = ""
    var apartmentNumber:String = ""
    var state:Bool = false
    var carIn:String = ""
    var carTotal:String = ""
    var id:String = ""
}
