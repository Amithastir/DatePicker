//
//  ViewController.swift
//  WhatDay
//
//  Created by MAC on 2/10/16.
//  Copyright © 2016 AMIT SHARMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var datepicker: UIDatePicker!
    @IBAction func dispplayDay(sender: AnyObject) {
        let choosedate=datepicker.date
        let dateformatter=NSDateFormatter()
        dateformatter.dateFormat="EEEE"
        let day=dateformatter.stringFromDate(choosedate)
        let result="that day was \(day)"
        let myalert=UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        myalert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(myalert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

