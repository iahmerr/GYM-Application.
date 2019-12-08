//
//  WebViewVC.swift
//  24do
//
//  Created by Ahmer Hassan on 07/12/2019.
//  Copyright © 2019 Victor Kenzo Nawa. All rights reserved.
//

import UIKit
import WebKit
import GoogleMobileAds

class WebViewVC: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        openPage()
       
    }
    func openPage() {
        let path = Bundle.main.url(forResource: "private_policy", withExtension: "html")
        let request = URLRequest(url: path!)
        webView.load(request)
    }

}
