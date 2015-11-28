//
//  ViewController.swift
//  ModelViewAdapterTemplate
//
//  Created by JAVIER CALATRAVA LLAVERIA on 28/11/15.
//  Copyright © 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var lblResultOperationA: UILabel!
    @IBOutlet weak var lblResultOperationB: UILabel!
    
    
    let adaptor:Adaptor = Adaptor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupAdapter(){
        
    }

}

