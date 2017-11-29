//
//  AddTaskViewController.swift
//  Database
//
//  Created by raghuveer ravuri on 10/31/17.
//  Copyright © 2017 OWNER. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet var taskTextField: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        if(taskTextField.text != "") {
            
            list2.append(taskTextField.text!)
            taskTextField.text = ""
        
        
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

