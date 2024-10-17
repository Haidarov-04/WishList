//
//  WishListViewController.swift
//  WishList
//
//  Created by Maksym Husar.
//  Copyright © 2019 jetcoder-academy. All rights reserved.
//

import UIKit

class WishListViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Wishes"
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showDetails" else { return }
        guard let destVC = segue.destination as? WishDetailsViewController else { return }
        guard let cell = sender as? UITableViewCell,
              let indexPath = tableView.indexPath(for: cell) else { return }
        let wish = DataManager.instance.newWishes[indexPath.row]
        destVC.wish = wish
    }

}

extension WishListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.instance.newWishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewWishTableViewCell", for: indexPath) as! NewWishTableViewCell
        let wish = DataManager.instance.newWishes[indexPath.row]
        cell.update(name: wish.name)
        return cell
    }
}
