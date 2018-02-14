//
//  MembersTableViewCell.swift
//  stfab4
//
//  Created by MKB on 10/02/2018.
//  Copyright © 2018 MKB. All rights reserved.
//

import UIKit

class MembersTableViewCell: UITableViewCell {
    @IBOutlet var memberTitle: UILabel!
    @IBOutlet var apartmentNumber: UILabel!
    @IBOutlet var parkState: UILabel!
    @IBOutlet var carIn: UILabel!
    @IBOutlet var carTotal: UILabel!
    func setMemberTitle(title:String){
        memberTitle.text = title
    }
    func setApartmentNumber(apartmentNo:String) {
        apartmentNumber.text = apartmentNo
    }
    func setParkState(empty:Bool) {
        if (empty) {
            parkState.text = "Boş"
        }
        else {
            parkState.text = "Dolu"
        }
    }
    func setCarIn(carInCount:String) {
        carIn.text = carInCount
    }
    func setCarTotal(carTotalCount:String) {
        carTotal.text = carTotalCount
    }
    func setMember(member:MemberCellModel) {
        self.setMemberTitle(title: member.memberTitle)
        self.setApartmentNumber(apartmentNo: member.apartmentNumber)
        self.setParkState(empty: member.state)
        self.setCarIn(carInCount: member.carIn)
        self.setCarTotal(carTotalCount: member.carTotal)
    }
}
