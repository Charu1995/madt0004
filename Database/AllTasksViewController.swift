//
//  AllTasksViewController.swift
//  Database
//
//  Created by raghuveer ravuri on 11/1/17.
//  Copyright © 2017 OWNER. All rights reserved.
//

import UIKit

class AllTasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var myTableView3: UITableView!
    var myIndex3 = 0
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list2.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "newcell" )
        
        
        cell.textLabel?.text = list2[indexPath.row]
        
        return cell
        
    }
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        myIndex3 = indexPath.row
        performSegue(withIdentifier: "segue3", sender: self)
    }
        */
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            list2.remove(at: indexPath.row)
            myTableView3.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView3.reloadData()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
