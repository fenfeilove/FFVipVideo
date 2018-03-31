//
//  FFWebViewController.swift
//  FFVipVideo
//
//  Created by francis zhuo on 30/03/2018.
//  Copyright © 2018 fenfei. All rights reserved.
//

import UIKit
import WebKit

class FFWebViewController: UIViewController,WKUIDelegate,WKNavigationDelegate {

    var webView:WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initWebView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initWebView() -> Void {
        let rect = self.view.bounds
        webView = WKWebView.init(frame: rect)
        webView?.uiDelegate = self
        webView?.navigationDelegate = self
//        http://vip.jlsprh.com/index.php?url=
//        http://jx.vgoodapi.com/jx.php?url=
//        http://vip.jlsprh.com/index.php?url=http://www.iqiyi.com/v_19rrc93v4c.html#vfrm=19-9-0-1
        let urlString = "http://vip.jlsprh.com/index.php?url=http://m.iqiyi.com/v_19rreglczg.html#vfrm=19-9-0-1"
        let theURL = URL.init(string: urlString)
        let urlRequest = URLRequest.init(url: theURL!)
        webView?.load(urlRequest)
        self.view.addSubview(webView!)
        WKWebViewConfiguration
    }
    
    // 页面开始加载时调用
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        NSLog("页面开始加载时调用")
    }
    
    // 当内容开始返回时调用
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        NSLog("当内容开始返回时调用")
    }
    // 页面加载完成之后调用
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        NSLog(" 页面加载完成之后调用")
    }
    // 页面加载失败时调用
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        NSLog("页面加载失败时调用")
    }
    // 接收到服务器跳转请求之后调用
    func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!) {
        NSLog("收到服务器跳转请求之后调用")
    }
    
    // 在收到响应后，决定是否跳转
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        NSLog("在收到响应后，决定是否跳转 %@",navigationResponse.response.url?.absoluteString ?? "")
        decisionHandler(WKNavigationResponsePolicy.allow)
    }
    
    // 在发送请求之前，决定是否跳转
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        let requestUrl = navigationAction.request.url?.absoluteString
        NSLog("在发送请求之前，决定是否跳转 %@",requestUrl ?? "")
        if navigationAction.targetFrame == nil {
            NSLog("在发送请求之前，决定是否跳转 targetFrame is nil")
            webView.load(navigationAction.request)
        }
        else if requestUrl != nil{
            if (
//                requestUrl!.contains("ynjczy.net") ||
//                requestUrl!.contains("ylbdtg.com") ||
//                requestUrl!.contains("662820.com") ||
//                requestUrl!.contains("api.vparse.org") ||
//                requestUrl!.contains("hyysvip.duapp.com") ||
//                requestUrl!.contains("f.qcwzx.net.cn")
//                || requestUrl!.contains("snzze.com")
//                || requestUrl!.contains("www.whrbx.cn")
                 requestUrl!.contains("mengqiankun.com")
                || requestUrl!.contains("apple.com")
                || requestUrl!.contains("ndpqyg.com")
//                || requestUrl!.contains("js.wo-x.cn")
//                || requestUrl!.contains("img.wsf-gz.cn")
//                || requestUrl!.contains("img.yuyue007.cn")
                ) {
                NSLog("******* 有广告");
                decisionHandler(WKNavigationActionPolicy.cancel);
                return;
            }
        }
        decisionHandler(WKNavigationActionPolicy.allow)
    }
    // 创建一个新的WebView
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        NSLog("创建一个新的WebView")
        return WKWebView.init()
    }
}




