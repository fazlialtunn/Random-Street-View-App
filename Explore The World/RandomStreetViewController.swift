//
//  RandomStreetViewController.swift
//  Explore The World
//
//  Created by Fazli Altun on 1.05.2024.
//

import UIKit
import WebKit

class RandomStreetViewController: UIViewController, WKNavigationDelegate {
    
    private let webView: WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero,
                                configuration: config)
        return webView
    }()
    
    var baseURL = "http://maps.google.com/maps?q=&layer=c&cbll=31.335198,-89.287204&cbp="

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        view.addSubview(webView)
        
        //guard let url = baseURL else { return }
        webView.load(URLRequest(url: URL(string: baseURL)!))
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
}
