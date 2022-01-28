//
//  EKWeaklyClass.swift
//  EKUIKit
//
//  Created by Emil Karimov on 15.12.2021.
//  Copyright © 2021 Emil Karimov. All rights reserved.
//

public class Weak<T> {

    weak private var value: AnyObject?

    public var weak: T? {
        return value as? T
    }

    public init<T: AnyObject>(_ value: T) {
        self.value = value
    }
    
}
