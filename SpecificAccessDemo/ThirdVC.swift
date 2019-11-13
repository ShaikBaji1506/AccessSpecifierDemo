//
//  ThirdVC.swift
//  SpecificAccessDemo
//
//  Created by Shaik Baji on 13/11/19.
//  Copyright © 2019 smartitventures.com. All rights reserved.
//

import UIKit

class ThirdVC: ViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func developerNamess(namess: String) -> String {
        return namess
    }

    override func developerName(name: String) -> String {
        return name
    }
    
}


//MARK:- File_Private

class Shaik{
    
    func checkFilePrivateD()
    {
        let vc = ViewController()
        vc.myAge(age: 13) //gets error because when we use the filePrivate keyword we can access that variable or function only in that specific file. you can't use in other files
    }
    
}
