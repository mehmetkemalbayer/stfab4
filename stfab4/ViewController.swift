//
//  ViewController.swift
//  stfab4
//
//  Created by MKB on 10/02/2018.
//  Copyright © 2018 MKB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var members:[String] = ["Kuaför", "Bakes Natural", "Alp Gıda", "Yes Dijital", "Telefoncu", "Daire 1", "Daire 2", "Daire 3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MembersTableViewCell", for: indexPath) as! MembersTableViewCell
        cell.setMemberTitle(title: members[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MemberLogin", sender: self)
    }
    
}

