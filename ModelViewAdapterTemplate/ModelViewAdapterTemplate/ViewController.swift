//
//  ViewController.swift
//  ModelViewAdapterTemplate
//
//  Created by JAVIER CALATRAVA LLAVERIA on 28/11/15.
//  Copyright © 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import UIKit


class ViewController: UIViewController,AdaptorDelegate {

    @IBOutlet weak var lblResultOperationA: UILabel!
    @IBOutlet weak var lblResultOperationB: UILabel!
    
    
    var adaptor:Adaptor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self .setupAdapter()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupAdapter(){
        if adaptor == nil {
            adaptor = Adaptor(delegate: self)
        }
    }

    // MARK: - AdaptorDelegate
    func operationAResult(value: NSNumber){
        
        lblResultOperationA.text = value.stringValue
    }

    func operationBResult(value: NSNumber){
        
        lblResultOperationB.text = value.stringValue
    }
}

