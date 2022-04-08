//
//  Button.swift
//  EKUIKit
//
//  Created by Emil Karimov on 28.01.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import UIKit
import NativeUIKit
import SparrowKit

public class Button: NativeLargeActionButton {
    
    public static func make(with image: UIImage? = nil, title: String, background color: UIColor, foregroundColor: UIColor, font: UIFont? = nil) -> Button {
        
        let colories = SPDimmedButton.Colorise.init(content: foregroundColor, icon: foregroundColor, background: color)
        
        // Set Appearance and Content
        let button = Button()
        button.set(title: title,
                   icon: image,
                   colorise: colories)
        if let font = font {
            button.titleLabel?.font = font
        }
        
        return button
    }
    
}
