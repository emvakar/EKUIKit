//
//  PrintLog.swift
//  EKUIKit
//
//  Created by Emil Karimov on 15.12.2021.
//  Copyright © 2021 Emil Karimov. All rights reserved.
//

import Foundation

public func printLog(_ _class: AnyObject, _ _object: Any...) {
    #if DEBUG
    let targetName = ((Bundle.main.infoDictionary?["CFBundleName"] as? String) ?? "").replacingOccurrences(of: " ", with: "_")
    let className = String(describing: _class).components(separatedBy: "\(targetName).").last ?? ""
    let objectString = String(describing: _object)
    print("[DEBUG]: \(className): \(objectString)") // swiftlint:disable:this print_using
    #endif
}
