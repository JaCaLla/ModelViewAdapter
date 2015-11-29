//
//  Adaptor.swift
//  ModelViewAdapterTemplate
//
//  Created by JAVIER CALATRAVA LLAVERIA on 28/11/15.
//  Copyright © 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import Foundation

public protocol AdaptorDelegate : NSObjectProtocol,OperationADelegate,OperationBDelegate{
    
}

class Adaptor: NSObject, OperationADelegate, OperationBDelegate {
    
    var viewModel:ModelView = ModelView()
    let operationQueue:NSOperationQueue = NSOperationQueue()
    weak var delegate: AdaptorDelegate?
    
    
    convenience init(delegate: AdaptorDelegate) {
        self.init()
    
        self.delegate = delegate
        

        operationQueue.addOperation(OperationA(delegate: self))
        operationQueue.addOperation(OperationB(delegate: self))
        
    }
    
   // MARK - OperationADelegate
    func operationAResult(value: NSNumber){
        
        viewModel.textOperationA = value
        
        dispatch_async(dispatch_get_main_queue(),{
                self.delegate!.operationAResult(value)
        })
        
    }
    
    // MARK - OperationADelegate
    func operationBResult(value: NSNumber){
        
        viewModel.textOperationB = value
        
        dispatch_async(dispatch_get_main_queue(),{
            self.delegate!.operationBResult(value)
        })
        
    }
}