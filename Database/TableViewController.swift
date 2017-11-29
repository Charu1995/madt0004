//
//  TableViewController.swift
//  Database
//
//  Created by raghuveer ravuri on 10/30/17.
//  Copyright © 2017 OWNER. All rights reserved.
//

import UIKit
 var list = [ "Shopping List","Assignments","Errands"]
class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var myIndex = 0
    @IBOutlet var myTableView: UITableView!
    override  func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    
  // public func numberOfSections(in tableView: UITableView) -> Int {
        
       // return 1
        
   // }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count
        
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell" )
    
        
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
   
    
   
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
}
