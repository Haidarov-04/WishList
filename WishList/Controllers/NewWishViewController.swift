//
//  NewWishViewController.swift
//  WishList
//
//  Created by Maksym Husar.
//  Copyright © 2019 jetcoder-academy. All rights reserved.
//

import UIKit

class NewWishViewController: UIViewController {

    @IBOutlet private weak var wishTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "New Wish"
    }
    
    @IBAction private func savePressed(_ sender: Any) {
        guard let name = wishTextField.text, !name.isEmpty else { return }
        let newWish = Wish(name: name, description: nil)
        DataManager.instance.addWish(newWish)
        navigationController?.popViewController(animated: true)
    }

}
