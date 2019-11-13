//
//  ViewController.swift
//  SpecificAccessDemo
//
//  Created by Shaik Baji on 13/11/19.
//  Copyright © 2019 smartitventures.com. All rights reserved.
//

import UIKit
import MyFirstFramework

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       developerName(name: "Swift")
       developerNames(names: "ObjC")
       developerNamess(namess:"RX_Swift")
       developersNameDef(named:"Flutter")
       myAge(age: 25)
        
    //MARK:- Accessing the other module variables and methods in different module class
        
/* Here i have accessed the openClass from MyFirstFramework Module and able to use the variables and functions of those classes */
        
        let aOpenClassVar = OpenClass()
        aOpenClassVar.aOpenMethod()
        aOpenClassVar.bOpenMethod()
        
        
        let aPublicClassVar = PublicClass()
        aPublicClassVar.aPublicMethod()
        aPublicClassVar.bPublicMethod()
    
        
        //MARK:- Here we were unable to access the InternalClass properties or functions due to it doesn't intialized with public or open keyword
        
        //let aInternalClassVar = InternalClass()
        
       
    }
    
    //MARK:- Public key for functions
    public func developerName(name:String) -> String {
        
        return name
    }
    
    //MARK:- Private key for functions
    
    private func developerNames(names:String) -> String {
        
        return names
    }
    
    //MARK:- Open key for functions
    open func developerNamess (namess:String) -> String{
        return namess
    }
    
    //MARK:- Default functions for swift
    
    func developersNameDef(named:String) -> String {
        return named
    }
    
    //MARK:- File Private
    
    fileprivate func myAge(age:Int) -> Int {
        
        return age
    }
    
    
    
}

//MARK:- When we assign FilePrivate Keyword to any variable or function we can use that property or function anywhere (only in that file) but not in other file

 //1.Where as private keyword can be accessible only inside the class

class CheckFilePrivate{
    
     func checkFilePrivate()
     {
         let vc = ViewController()
         vc.myAge(age: 24)
     }
   
}

//MARK:- OpenClass (From MyFirstFramework)
class subOpenClass:OpenClass
{
   
}

//MARK:- PublicClass (From MyFirstFramework) here we can't Inherit the class which are initialized with Public keyword for the class when we are using from other modules

class subPublicClass:PublicClass
{
    
}

//MARK:- OpenClassL (From inside project)
class subOpenClassL:OpenClassL
{
    
}

//MARK:- PublicClass (From Framework) here we can't Inherit the class which are initialized with Public keyword for the class when we are using from other modules ---->> But here we are used in the same module and we can inherit if we are in same module


//MARK:- PublicClassL (From inside project)
class subPublicClassL:PublicClassL
{
    
}
