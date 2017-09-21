//
//  UIImageViewExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

//MARK: Methods
public extension UIImageView {
    
    //Set image from a URL.
    public func download(from url: URL,
                         contentMode: UIViewContentMode = .scaleAspectFit,
                         placeholder: UIImage? = nil,
                         completionHandler: ((UIImage?) -> Void)? = nil) {
        
        image = placeholder
        self.contentMode = contentMode
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data,
                let image = UIImage(data: data)
                else {
                    completionHandler?(nil)
                    return
            }
            DispatchQueue.main.async() { () -> Void in
                self.image = image
                completionHandler?(image)
            }
        }.resume()
    }
    
    //Make image view blur
    public func blur(withStyle style: UIBlurEffectStyle = .light) {
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
        addSubview(blurEffectView)
        clipsToBounds = true
    }
    
    //Blurred version of an image view
    public func blurred(withStyle style: UIBlurEffectStyle = .light) -> UIImageView {
        let imgView = self
        imgView.blur(withStyle: style)
        return imgView
    }
}
