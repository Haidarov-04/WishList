//
//  HistoryTableViewCell.swift
//  WishList
//
//  Created by Maksym Husar.
//  Copyright © 2019 jetcoder-academy. All rights reserved.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        descriptionLabel.font = UIFont.systemFont(ofSize: 12)
        descriptionLabel.textColor = UIColor.lightGray
        selectionStyle = .none
    }
    
    func update(name: String, description: String?) {
        nameLabel.text = name
        descriptionLabel.text = description
    }

}
