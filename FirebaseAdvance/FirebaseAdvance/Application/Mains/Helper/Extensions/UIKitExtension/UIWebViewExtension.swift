//
//  UIWebViewExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit


// MARK: - Methods
public extension UIWebView {
    
    //Load a URL
    public func loadURL(_ url: URL) {
        loadRequest(URLRequest(url: url))
    }
    
    //Load a URL string
    public func loadURLString(_ urlString: String) {
        guard let url = URL(string: urlString) else { return }
        loadRequest(URLRequest(url: url))
    }
}
