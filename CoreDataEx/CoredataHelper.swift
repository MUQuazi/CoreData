//
//  CoredataHelper.swift
//  CoreDataEx
//
//  Created by MacHD on 19/05/23.
//

import CoreData
import UIKit

class CoredataHelper{
    private let viewContext = PersistentContainer.shared.context
    
    func add<T:NSManagedObject>(_ type: T.Type) -> T?{
        guard let entityName = T.entity().name else{return nil}
        guard let entity = NSEntityDescription.entity(forEntityName: entityName, in: viewContext)else {return nil}
        let object = T(entity: entity, insertInto: viewContext)
        return object
    }
    
    func fetch<T:NSManagedObject>(_ type: T.Type) -> [T]{
        let request = T.fetchRequest()
        do {
            let result =  try viewContext.fetch(request)
            return result as! [T]
        } catch  {
            print("")
            return []
        }
       
       
    }
    
    func save(){
        do {
            try viewContext.save()
        } catch  {
            
        }
    }
}
