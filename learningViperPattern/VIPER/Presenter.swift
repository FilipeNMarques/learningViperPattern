//
//  Presenter.swift
//  learningViperPattern
//
//  Created by Filipe Marques on 22/07/21.
//

import Foundation

// Responsibilities


// Object
// Protocol
// Ref to interector, Router, View


protocol AnyPresenter {
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
}

class UserPresenter: AnyPresenter {
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
    
    }
    
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    
}
