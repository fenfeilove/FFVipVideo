//
//  FFWebViewController.swift
//  FFVipVideo
//
//  Created by francis zhuo on 30/03/2018.
//  Copyright © 2018 fenfei. All rights reserved.
//

import UIKit
import WebKit

class FFWebViewController: UIViewController {

    @IBOutlet var webView:WKWebView?
    @IBOutlet var uiWebView:UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let config:WKWebViewConfiguration = WKWebViewConfiguration.init()
//        config.preferences
        // Do any additional setup after loading the view.
//        http://vip.jlsprh.com/index.php?url=
        let urlString:String = "http://www.baidu.com"
        let theUrl:URL? = URL.init(string: urlString)
        let urlRequest:URLRequest? = URLRequest.init(url: theUrl!)
        print(urlRequest!)
        if webView != nil{
            print(webView!)
            webView?.load(urlRequest!)
        }
        if uiWebView != nil {
            uiWebView?.loadRequest(urlRequest!)
        }
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
