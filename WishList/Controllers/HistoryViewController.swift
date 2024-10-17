//
//  HistoryViewController.swift
//  WishList
//
//  Created by Maksym Husar.
//  Copyright © 2019 jetcoder-academy. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "History"
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HistoryViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.instance.doneWishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryTableViewCell", for: indexPath) as! HistoryTableViewCell
        let wish = DataManager.instance.doneWishes[indexPath.row]
        cell.update(name: wish.name, description: wish.description)
        return cell
    }
}
