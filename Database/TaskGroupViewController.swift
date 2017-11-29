//
//  TaskGroupViewController.swift
//  Database
//
//  Created by raghuveer ravuri on 10/30/17.
//  Copyright © 2017 OWNER. All rights reserved.
//

import UIKit

class TaskGroupViewController: UIViewController {
    @IBOutlet var input: UITextField!
    
    @IBAction func addTaskGroup(_ sender: Any) {
        
        if(input.text != "") {
            
            list.append(input.text!)
            input.text = ""
            
        }
        
        
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
