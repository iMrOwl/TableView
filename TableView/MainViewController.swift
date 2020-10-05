//
//  MainViewController.swift
//  TableView
//
//  Created by Сычев Евгений Дмитриевич on 05.10.2020.
//  Copyright © 2020 Сычев Евгений Дмитриевич. All rights reserved.
//

import UIKit

// MARK: - MainViewController

 final class MainViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet private var tableView: UITableView!
    
    // MARK: - Private properties
    
    private let restaurantNames = [
        "Burger Heroes",
        "Kitchen",
        "Bonsai",
        "Дастархан",
        "Индокитай",
        "X.O",
        "Балкан Гриль",
        "Sherlock Holmes",
        "Speak Easy",
        "Morris Pub",
        "Вкусные истории",
        "Классик",
        "Love&Life",
        "Шок",
        "Бочка"
    ]
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - UITableViewDataSource

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        
        return cell
    }
}
 
// MARK: - UITableViewDelegate

extension MainViewController: UITableViewDelegate {
    
}
