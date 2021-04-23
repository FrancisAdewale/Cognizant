//
//  ReusableButton.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 23/04/2021.
//

import UIKit

extension UIButton {
    
    class func customButton(frame: CGRect) -> UIButton {
        let button = UIButton(frame: frame)
        button.clipsToBounds = true
        button.layer.cornerRadius =  10.0
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2.0
        return button
    }
}
