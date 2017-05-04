//
//  DBProvider.swift
//  Sign In Template
//
//  Created by Michael V. Corpus on 04/05/2017.
//  Copyright © 2017 Michael V. Corpus. All rights reserved.
//

import Foundation
import Firebase

class DBProvider {
    
    private static let _instance = DBProvider()
    static var Instance: DBProvider{
        return _instance
    }
    
    var dbRef: FIRDatabaseReference {
        return FIRDatabase.database().reference()
    }
    
    var usersRef: FIRDatabaseReference {
        return dbRef.child(Constants.USERS)
    }
    
    func saveUser(withID: String, email: String, password: String) {
        let data: Dictionary<String, Any> = [Constants.EMAIL: email, Constants.PASSWORD: password, Constants.isAdmin: false]
        
        usersRef.child(withID).child(Constants.DATA).setValue(data)
    }
}



















