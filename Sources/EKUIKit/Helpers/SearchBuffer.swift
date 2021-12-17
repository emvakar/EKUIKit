//
//  SearchBuffer.swift
//  EKUIKit
//
//  Created by Emil Karimov on 15.12.2021.
//  Copyright © 2021 Emil Karimov. All rights reserved.
//

import Foundation

public class SearchBuffer: NSObject {

    private var delay = 0.8
    private var minSearchCount = 3

    private let queue: DispatchQueue
    private var workItem: DispatchWorkItem?

    public init(queue: DispatchQueue, delay: Double = 0.8, minSearchCount: Int = 3) {
        self.queue = queue
        self.minSearchCount = minSearchCount
        self.delay = delay
    }

    public func searchBy(text: String?, _ closure: @escaping (String?) -> Void) {
        workItem?.cancel()

        guard let text = text, !text.isEmpty else {
            closure(nil)
            return
        }

        if text.count < minSearchCount {
            return
        }

        workItem = DispatchWorkItem {
            closure(text)
        }

        if let workItem = workItem {
            queue.asyncAfter(deadline: .now() + delay, execute: workItem)
        }
    }
}
