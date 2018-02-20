//
//  NewCarViewController.swift
//  stfab4
//
//  Created by MKB on 15/02/2018.
//  Copyright © 2018 MKB. All rights reserved.
//

import UIKit

class NewCarViewController: UIViewController {
    var addNewCarDelegate:AddNewCarDelegate?
    @IBOutlet var driversName: UITextField!
    @IBOutlet var licensePlate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "Yeni Araç"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveNewCar(_ sender: Any) {
        let newCar:CarCellModel = CarCellModel(licensePlate: self.licensePlate.text!, driversName: self.driversName.text!)
        addNewCarDelegate?.addNewCar(car: newCar)
        self.navigationController?.popViewController(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
protocol AddNewCarDelegate {
    func addNewCar(car:CarCellModel)
}
