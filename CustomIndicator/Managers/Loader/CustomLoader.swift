//
//  CustomLoader.swift
//  CustomIndicator
//
//  Created by tabish on 20/06/2021.
//

import UIKit

class Loader: UIViewController {
    
    let loaderImgVu: UIImageView = {
        let loaderImgVu = UIImageView()
        loaderImgVu.tag = 100
        let loaderGif = UIImage.gifImageWithName("loader-gif")
        loaderImgVu.image = loaderGif
        return loaderImgVu
    }()
    
    static var shared = Loader()
    
    func showLoader(view: UIView) {
        view.addSubview(loaderImgVu)
        loaderImgVu.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        loaderImgVu.center = view.center
    }
    
    func hideLoader(view: UIView) {
        if let loaderImgVu = view.viewWithTag(100) {
            loaderImgVu.removeFromSuperview()
        }
    }
}
