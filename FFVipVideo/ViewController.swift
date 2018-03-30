//
//  ViewController.swift
//  FFVipVideo
//
//  Created by francis zhuo on 30/03/2018.
//  Copyright © 2018 fenfei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var loginBtn : UIButton?
    @IBOutlet var registBtn : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        self.loginBtn?.layer.masksToBounds = true
        self.loginBtn?.layer.borderWidth = 1.0
        self.loginBtn?.layer.borderColor = UIColor.white.cgColor
        self.loginBtn?.layer.cornerRadius = 8.0
        
        self.registBtn?.layer.borderWidth = 1.0
        self.registBtn?.layer.borderColor = UIColor.white.cgColor
        self.registBtn?.layer.cornerRadius = 7.0
    }
    @IBAction func loginSuccess (_ segue:UIStoryboardSegue){
        NSLog("login success");
//        self.performSegue(withIdentifier: "mainViewControllerSegue", sender: self);
    }
}

