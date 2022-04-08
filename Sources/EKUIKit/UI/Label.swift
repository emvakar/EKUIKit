//
//  Label.swift
//  EKUIKit
//  
//  Created by Emil Karimov on 28.01.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import UIKit

public class Label: UILabel {

    public static func make(with text: String?, color: UIColor = .black, font: UIFont? = nil, textAlignment: NSTextAlignment = .left) -> Label {
        
        let label = Label()

        label.textColor = color
        label.textAlignment = textAlignment
        label.numberOfLines = 0
        
        if let font = font {
            label.font = font
        }
        label.text = text
        return label
    }
    
}
