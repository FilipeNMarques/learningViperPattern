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
    var presenter: AnyPresenter?
    
    func getUsers() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        
        let task = URLSession.shared.dataTask(with: url) {
           [weak self] data, _, error in guard let data = data, error == nil else {
            self?.presenter?.interactorDidFetchUsers(with: .failure(FetchError.failed))
            return
            
           }
            
            do {
                let entities = try JSONDecoder().decode([User].self, from: data)
                self?.presenter?.interactorDidFetchUsers(with: .success(entities))
            }
            catch {
                self?.presenter?.interactorDidFetchUsers(with: .failure(error))
            }
        }
        task.resume()
    }
}
