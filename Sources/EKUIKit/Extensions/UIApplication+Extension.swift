//
//  UIApplication+Extension.swift
//  EKUIKit
//
//  Created by Emil Karimov on 05.04.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import UIKit

public extension UIApplication {

    /// The app's key window taking into consideration apps that support multiple scenes.
    var keyWindowInConnectedScenes: UIWindow? { windows.first(where: { $0.isKeyWindow }) }

}
