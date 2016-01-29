//
//  Semaphore.swift
//  Waterloo
//
//  Created by Cotton, Jonathan (Mobile Developer) on 29/01/2016.
//  Copyright © 2016 Jon Cotton. All rights reserved.
//

import Foundation

public struct Semaphore {
    private let dispatchSemaphore: dispatch_semaphore_t
    
    public init(_ startingValue: Int = 0) {
        var value = startingValue
        if value < 0 {
            value = 0
        }
        
        dispatchSemaphore = dispatch_semaphore_create(value)
    }
    
    public func wait(timeout: NSTimeInterval) {
        let timeoutTime = dispatch_time(DISPATCH_TIME_NOW, Int64(timeout) * Int64(NSEC_PER_SEC));
        dispatch_semaphore_wait(dispatchSemaphore, timeoutTime)
    }
    
    public func signal() {
        dispatch_semaphore_signal(dispatchSemaphore)
    }
}