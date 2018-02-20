//
//  CarsTableViewCell.swift
//  stfab4
//
//  Created by MKB on 20.02.2018.
//  Copyright © 2018 MKB. All rights reserved.
//

import UIKit

class CarsTableViewCell: UITableViewCell {

    @IBOutlet var licensePlateLabel: UILabel!
    @IBOutlet var driversNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setCar (car:CarCellModel) {
        self.licensePlateLabel.text = car.licensePlate
        self.driversNameLabel.text = car.driversName
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
