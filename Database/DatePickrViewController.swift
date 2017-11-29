//
//  DatePickrViewController.swift
//  Database
//
//  Created by raghuveer ravuri on 11/6/17.
//  Copyright © 2017 OWNER. All rights reserved.
//

import UIKit

class DatePickrViewController: UIViewController {

    @IBOutlet var segment: UISegmentedControl!
    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var datePickr: UIDatePicker!
    
    @IBAction func getDate(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        
        dateLabel.text = dateFormatter.string(from: datePickr.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func segmentedAction(_ sender: UISegmentedControl) {
        if segment.selectedSegmentIndex == 0{
            //segment1action
            self.view.backgroundColor = UIColor(red: 160/255, green: 188/255, blue: 88/255, alpha: 1.0)
        }
        if segment.selectedSegmentIndex == 1{
            //segment2action
             self.view.backgroundColor = UIColor(red: 234/255, green: 68/255, blue: 79/255, alpha: 1.0)
            
        }
        if segment.selectedSegmentIndex == 2{
            //segment3action
             self.view.backgroundColor = UIColor(red: 232/255, green: 210/255, blue: 90/255, alpha: 1.0)
        }
        
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
