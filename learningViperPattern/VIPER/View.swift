//
//  View.swift
//  learningViperPattern
//
//  Created by Filipe Marques on 22/07/21.
//

import Foundation
import UIKit
// Responsibilities
// ViewController
// Protocol
// Reference presenter

protocol AnyView {
    var presenter: AnyPresenter? { get set }
    
    func update(with users: [User])
    func update(with error: String)
}

class UserViewController: UIViewController, AnyView, UITableViewDelegate, UITableViewDataSource {
    var presenter: AnyPresenter?
    
    private var tableView: UITableView {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.isHidden = true
        
        return table
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.frame = view.bounds
    }
    
    func update(with users: [User]) {
        
    }
    
    func update(with error: String) {
        
    }
    
//    Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
