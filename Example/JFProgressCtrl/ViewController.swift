//
//  ViewController.swift
//  JFProgressCtrl
//
//  Created by arthurkiing on 03/10/2016.
//  Copyright (c) 2016 arthurkiing. All rights reserved.
//

import UIKit
import JFProgressCtrl

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let testProgress : JFProgressCtrl = JFProgressCtrl(frame : CGRect(x: 0, y: 200, width: self.view.frame.width , height: 50))
        testProgress.setProgressValue(50)
        self.view.addSubview(testProgress)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

