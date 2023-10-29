//
//  Task.swift
//  TodoDemo
//
//  Created by Luciano dii Souza on 29/10/23.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
    
    
}
