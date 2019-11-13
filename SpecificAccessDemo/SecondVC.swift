//
//  SecondVC.swift
//  SpecificAccessDemo
//
//  Created by Shaik Baji on 13/11/19.
//  Copyright © 2019 smartitventures.com. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

            let obj = ViewController()
        
            obj.developerName(name:"Shaik") //Public used -> Passed
        
            //obj.developerNames(names: "Baji") // Privates used -> Failed we can't access this method because it is initialized with private keyword
        
            obj.developerNamess(namess: "i_am_Baji") // Open used -> Passed
        
            obj.developersNameDef(named: "Hello_World") // Default used -> Passed
        
   }
    
}
