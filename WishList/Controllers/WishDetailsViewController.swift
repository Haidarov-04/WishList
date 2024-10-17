//
//  WishDetailsViewController.swift
//  WishList
//
//  Created by Maksym Husar.
//  Copyright © 2019 jetcoder-academy. All rights reserved.
//

import UIKit

class WishDetailsViewController: UIViewController {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    var wish: Wish?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = wish?.name
        descriptionLabel.text = wish?.description
    }
    
    @IBAction private func donePressed(_ sender: Any) {
        guard let wish = wish else { return }
        DataManager.instance.markAsDone(wish)
        navigationController?.popViewController(animated: true)
    }
    
}
