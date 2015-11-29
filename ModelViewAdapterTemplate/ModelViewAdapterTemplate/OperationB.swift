//
//  OperationA.swift
//  ModelViewAdapterTemplate
//
//  Created by JAVIER CALATRAVA LLAVERIA on 28/11/15.
//  Copyright © 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import Foundation

public protocol OperationBDelegate : NSObjectProtocol{
    
    func operationBResult(value: NSNumber)
    
}

class OperationB: NSOperation {
    
    weak var delegate: OperationBDelegate?
    
    convenience init(delegate: OperationBDelegate) {
        self.init()
        
        self.delegate = delegate

    }

    
    override func main() {

        NSThread.sleepForTimeInterval(2.0)
        
        self.delegate!.operationBResult(NSNumber(double: 2.0))
    }
}