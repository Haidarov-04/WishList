//
//  Wish.swift
//  WishList
//
//  Created by Maksym Husar.
//  Copyright © 2019 jetcoder-academy. All rights reserved.
//

import Foundation

struct Wish: Equatable {
    let name: String
    let description: String?
    
    static func == (lhs: Wish, rhs: Wish) -> Bool {
        return lhs.name == rhs.name && lhs.description == rhs.description
    }
}


