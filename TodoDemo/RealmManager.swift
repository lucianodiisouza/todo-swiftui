//
//  RealmManager.swift
//  TodoDemo
//
//  Created by Luciano dii Souza on 29/10/23.
//

import Foundation
import RealmSwift

class RealmManager: ObservableObject {
    private(set) var localRealm: Realm?
    
    init() {
        openRealm()
    }
    
    func openRealm() {
        do {
            let config = Realm.Configuration(schemaVersion: 1)
            
            Realm.Configuration.defaultConfiguration = config
            
            localRealm = try Realm()
        }
        catch {
            print("Error opening Realm: \(error)")
        }
    }
}
