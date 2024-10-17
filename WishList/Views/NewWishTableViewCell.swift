//
//  NewWishTableViewCell.swift
//  WishList
//
//  Created by Maksym Husar.
//  Copyright © 2019 jetcoder-academy. All rights reserved.
//

import UIKit

class NewWishTableViewCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var statusView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        statusView.layer.cornerRadius = statusView.bounds.width / 2.0
    }

    func update(name: String) {
        nameLabel.text = name
    }
    
}
