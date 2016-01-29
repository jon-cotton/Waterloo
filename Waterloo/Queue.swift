
//
//  File.swift
//  Waterloo
//
//  Created by Cotton, Jonathan (Mobile Developer) on 29/01/2016.
//  Copyright © 2016 Jon Cotton. All rights reserved.
//

import Foundation

public protocol Queue {
    var dispatchQueue: dispatch_queue_t {get}
    
    func async(closure: () -> ())
    func sync(closure: () -> ())
}

public extension Queue {
    func async(closure: () -> ()) {
        dispatch_async(dispatchQueue, closure)
    }
    
    func sync(closure: () -> ()) {
        dispatch_sync(dispatchQueue, closure)
    }
}