//
//  FFSegmentBarViewController.swift
//  FFVipVideo
//
//  Created by francis zhuo on 30/03/2018.
//  Copyright © 2018 fenfei. All rights reserved.
//

import UIKit

class FFSegmentBarViewController: UIViewController {
    @IBOutlet var segmentBar:UIScrollView?
    @IBOutlet var contentView:UIScrollView?
    @IBOutlet var ViewControllers: [UIViewController]?
    override var nibBundle: Bundle? {
        return Bundle(for: self.classForCoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("viewDidLoad");
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
