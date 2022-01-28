//
//  ScaleHelper.swift
//  EKUIKit
//
//  Created by Emil Karimov on 15.12.2021.
//  Copyright © 2021 Emil Karimov. All rights reserved.
//

import UIKit

public protocol Scalable {

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    var scale: Self { get }

}

extension CGFloat: Scalable {

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var scale: CGFloat {
        let designScreenWidth: CGFloat = ScreenSize.isIphoneXFamily ? 428 : 414
        let currentScreenWidth = UIScreen.main.bounds.size.width
        return self * currentScreenWidth / designScreenWidth
    }

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var safeScale: CGFloat {
        let designScreenWidth: CGFloat = ScreenSize.isIphoneXFamily ? 428 : 414
        let currentScreenWidth = UIScreen.main.bounds.size.width
        return CGFloat(roundf(Float(Double(self * currentScreenWidth / designScreenWidth))))
    }

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var unscale: CGFloat {
        let designScreenWidth: CGFloat = ScreenSize.isIphoneXFamily ? 428 : 414
        let currentScreenWidth = UIScreen.main.bounds.size.width
        return self / currentScreenWidth * designScreenWidth
    }

}

extension Int {

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var scale: CGFloat {
        return CGFloat(self).scale
    }

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var safeScale: CGFloat {
        return CGFloat(self).safeScale
    }

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var unscale: CGFloat {
        return CGFloat(self).unscale
    }

}

extension Double {

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var scale: CGFloat {
        return CGFloat(self).scale
    }

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var safeScale: CGFloat {
        return CGFloat(self).safeScale
    }

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var unscale: CGFloat {
        return CGFloat(self).unscale
    }

}

extension CGPoint: Scalable {

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var scale: CGPoint {
        return CGPoint(x: x.scale, y: y.scale)
    }

}

extension CGSize: Scalable {

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var scale: CGSize {
        return CGSize(width: width.scale, height: height.scale)
    }

}

extension CGRect: Scalable {

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var scale: CGRect {
        return CGRect(origin: origin.scale, size: size.scale)
    }

}

extension UIFont {

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var scale: UIFont {
        return UIFont(name: fontName, size: pointSize.scale) ?? UIFont.systemFont(ofSize: pointSize.scale)
    }

}

extension UIEdgeInsets: Scalable {

    /// Designed width
    ///
    /// ScreenSize.isIphoneXFamily ? 428 : 414
    public var scale: UIEdgeInsets {
        return UIEdgeInsets(top: top.scale, left: left.scale, bottom: bottom.scale, right: right.scale)
    }

}
