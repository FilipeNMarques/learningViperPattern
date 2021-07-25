//
//  Interactor.swift
//  learningViperPattern
//
//  Created by Filipe Marques on 22/07/21.
//

import Foundation


// Responsibilities

// Object
// Protocol
// Ref to presenter

// https://jsonplaceholder.typicode.com/users

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func getUsers()
}

class UserInteractor: AnyInteractor {
    func getUsers() {
        
    }
    
    var presenter: AnyPresenter?
    
    
}
