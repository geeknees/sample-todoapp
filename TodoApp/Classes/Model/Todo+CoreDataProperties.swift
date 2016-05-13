//
//  Todo+CoreDataProperties.swift
//  TodoApp
//
//  Created by masumi on 2016/05/12.
//  Copyright © 2016年 nendworks. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Todo {

    @NSManaged var item: String?
    @NSManaged var body: String?

}
