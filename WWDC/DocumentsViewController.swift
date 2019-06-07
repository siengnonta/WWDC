//
//  DocumentsViewController.swift
//  WWDC
//
//  Created by Nontapat Siengsanor on 7/6/2562 BE.
//  Copyright © 2562 Guilherme Rambo. All rights reserved.
//

import Cocoa
import WebKit

class DocumentsViewController: NSViewController {
    
    private lazy var webView: WKWebView = {
        return WKWebView(frame: NSRect(x: 0, y: 0, width: 800, height: 336)) }()
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        let sharedWWDCDocumentURL = "https://docs.google.com/document/d/1SkqoBl1uhMdG-m_9QCDQbcqRD-oeISmVOLvH6eQNMmk/edit?usp=sharing"
        
        if let url = URL(string: sharedWWDCDocumentURL) {
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
        }
    }
    
}
