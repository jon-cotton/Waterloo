//
//  SerialQueue.swift
//  Waterloo
//
//  Created by Cotton, Jonathan (Mobile Developer) on 29/01/2016.
//  Copyright © 2016 Jon Cotton. All rights reserved.
//

import Foundation

public struct SerialQueue: Queue {
    public let dispatchQueue: dispatch_queue_t
    
    public init(label: String) {
        dispatchQueue = dispatch_queue_create(label, DISPATCH_QUEUE_SERIAL)
    }
}