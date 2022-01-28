//
//  ScreenSize.swift
//  EKUIKit
//
//  Created by Emil Karimov on 15.12.2021.
//  Copyright © 2021 Emil Karimov. All rights reserved.
//

import UIKit

/// Screen sizes and iphones famaly
public enum ScreenSize {

    public static let bounds: CGRect = (UIScreen.main.bounds)
    public static let width: CGFloat = (bounds.width)
    public static let height: CGFloat = (bounds.height)
    public static let maxLength: CGFloat = (max(width, height))
    public static let minLength: CGFloat = (min(width, height))

    public static let isIpad = (UIDevice.current.userInterfaceIdiom == .pad)
    public static let isIphone = (UIDevice.current.userInterfaceIdiom == .phone)
    public static let isRetina = (UIScreen.main.scale >= 2.0)
    public static let isIphone4 = (isIphone && maxLength < 568.0)
    public static let isIphone5 = (isIphone && maxLength == 568.0)
    public static let isIphone6 = (isIphone && maxLength == 667.0)
    public static let isIphone6Plus = (isIphone && maxLength == 736.0)
    public static let isIphoneX = (isIphone && maxLength == 812.0)
    public static let isIphoneXMax = (isIphone && maxLength == 896.0)
    public static let isIphoneXFamily = (isIphone && maxLength / minLength > 2.0)

    public static let topOffset: CGFloat = isIphoneXFamily ? 24.0 : 0.0
    public static let bottomOffset: CGFloat = isIphoneXFamily ? 34.0 : 0.0

    public static let statusBarSize = UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.windowScene?.statusBarManager?.statusBarFrame.size ?? .zero
    public static let statusBarHeight = statusBarSize.height

    public static let tabBarHeight: CGFloat = 49
    public static let customTabBarHeight: CGFloat = 61.scale

}

extension CGRect {

    public func bounds() -> CGRect {
        var rect = self
        rect.origin = CGPoint.zero
        return rect
    }

}
