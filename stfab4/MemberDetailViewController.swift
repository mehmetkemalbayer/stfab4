//
//  MemberDetailViewController.swift
//  stfab4
//
//  Created by MKB on 15/02/2018.
//  Copyright © 2018 MKB. All rights reserved.
//

import UIKit

class MemberDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddNewCarDelegate  {
    func addNewCar(car: CarCellModel) {
        carsList.append(car)
        self.carsTableView.reloadData()
    }
    
    var carsList:[CarCellModel] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarsTableViewCell", for: indexPath) as! CarsTableViewCell
        cell.setCar(car: carsList[indexPath.row])
        return cell
    }

    @IBOutlet var memberName: UILabel!
    @IBOutlet var carsTableView: UITableView!
    var member:MemberCellModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        memberName?.text = member?.memberTitle
        self.tabBarController?.navigationItem.title = member?.apartmentNumber
        let nibi = UINib(nibName: "CarsTableViewCell", bundle: nil)
        self.carsTableView.register(nibi, forCellReuseIdentifier: "CarsTableViewCell")
        self.carsTableView.delegate = self
        self.carsTableView.dataSource = self
        /*
        let addItem = UIBarButtonItem(title: "Ekle", style: UIBarButtonItemStyle.done, target: self, action: #selector(MemberDetailViewController.addCar))
        self.tabBarController?.navigationItem.rightBarButtonItem = addItem
         */
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            carsList.remove(at: indexPath.row)
            self.carsTableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }

    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "CarsToNewCarSegue") {
            let newCarViewController:NewCarViewController = segue.destination as! NewCarViewController
            newCarViewController.addNewCarDelegate = self
        }
    }
 

}
