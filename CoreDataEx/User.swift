//
//  User.swift
//  CoreDataEx
//
//  Created by MacHD on 19/05/23.
//

import CoreData

class User: NSManagedObject{
    @NSManaged var name:String
    @NSManaged var age:Date
}
