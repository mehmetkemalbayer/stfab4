//
//  MembersTableViewController.swift
//  stfab4
//
//  Created by MKB on 11/02/2018.
//  Copyright © 2018 MKB. All rights reserved.
//

import UIKit

class MembersTableViewController: UITableViewController {
    var membersList:[MemberCellModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        let nibi = UINib(nibName: "MembersTableViewCell", bundle: nil)
        self.tableView.register(nibi, forCellReuseIdentifier: "MembersTableViewCell")
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        membersList.append(MemberCellModel.init(id: "1", memberTitle: "Mehmet Kemal Bayer", apartmentNumber: "6", state: false, carIn: "1", carTotal: "1"))
        membersList.append(MemberCellModel.init(id: "2", memberTitle: "Semih Bakır", apartmentNumber: "9", state: false, carIn: "1", carTotal: "1"))
        membersList.append(MemberCellModel.init(id: "3", memberTitle: "Mehmet İstanbulluoğlu", apartmentNumber: "59", state: false, carIn: "1", carTotal: "2"))
        membersList.append(MemberCellModel.init(id: "4", memberTitle: "Talat Kahraman", apartmentNumber: "8", state: true, carIn: "1", carTotal: "2"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return membersList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MembersTableViewCell", for: indexPath) as! MembersTableViewCell
        cell.setMember(member: membersList[indexPath.row])
        return cell

    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MemberDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "MemberDetailSegue" ) {
            let destination = segue.destination as! MemberDetailViewController
            destination.member = membersList[(self.tableView.indexPathForSelectedRow?.row)!]
            let backItem = UIBarButtonItem()
            backItem.title = "Geri"
            navigationItem.backBarButtonItem = backItem
        }
    }
    

}
