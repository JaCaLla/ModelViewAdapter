//
//  OperationA.swift
//  ModelViewAdapterTemplate
//
//  Created by JAVIER CALATRAVA LLAVERIA on 28/11/15.
//  Copyright © 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import Foundation

public protocol OperationADelegate : NSObjectProtocol{
    
    func operationAResult(value: NSNumber)
    
}

class OperationA: NSOperation {
    
    weak var delegate: OperationADelegate?
    
    convenience init(delegate: OperationADelegate) {
        self.init()
        
        self.delegate = delegate

    }

    
    override func main() {

        NSThread.sleepForTimeInterval(1.0)
        
        self.delegate!.operationAResult(NSNumber(double: 12.34))
    }
}