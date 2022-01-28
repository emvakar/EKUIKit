//
//  DispatchHelper.swift
//  EKUIKit
//
//  Created by Emil Karimov on 15.12.2021.
//  Copyright © 2021 Emil Karimov. All rights reserved.
//

import Foundation

/// Helps with delay and back and main queue.
public class DispatchHelper {

    /// Execute your code after N seconds.
    /// - Parameters:
    ///   - delay: in seconds.
    ///   - closure: your closure.
    public class func after(_ delay: Double, closure: @escaping () -> Void) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }

    /// Execute on main queue.
    /// - Parameter closure: your closure.
    public class func mainQueue(closure: @escaping () -> Void) {
        if Thread.isMainThread {
            closure()
        } else {
            DispatchQueue.main.async(execute: closure)
        }
    }

    /// Execute on background queue.
    /// - Parameter closure: your closure.
    public class func backgroundQueue(closure: @escaping () -> Void) {
        DispatchQueue.global(qos: .background).async(execute: closure)
    }

}
