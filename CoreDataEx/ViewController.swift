//
//  ViewController.swift
//  CoreDataEx
//
//  Created by MacHD on 19/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    func fetchUser(){
        
    }

    func saveUserDetail(name:String){
        let entity = CoredataHelper().add(User.self)
        entity?.name = name
        entity?.age = Date()
        CoredataHelper().save()
    }
}

