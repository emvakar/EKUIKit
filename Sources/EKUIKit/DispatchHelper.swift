//
//  DispatchHelper.swift
//  EKUIKit
//
//  Created by Emil Karimov on 15.12.2021.
//  Copyright © 2021 Emil Karimov. All rights reserved.
//

import Foundation

public class DispatchHelper {

    public class func after(_ delay: Double, closure: @escaping () -> Void) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }

    public class func mainQueue(closure: @escaping () -> Void) {
        if Thread.isMainThread {
            closure()
        } else {
            DispatchQueue.main.async(execute: closure)
        }
    }

    public class func backgroundQueue(closure: @escaping () -> Void) {
        DispatchQueue.global(qos: .background).async(execute: closure)
    }

}
