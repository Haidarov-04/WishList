//
//  DataManager.swift
//  WishList
//
//  Created by Maksym Husar.
//  Copyright © 2019 jetcoder-academy. All rights reserved.
//

import Foundation

final class DataManager {
    static let instance = DataManager()
    private init() {
        generateMockWishes()
    }
    
    private(set) var newWishes: [Wish] = []
    private(set) var doneWishes: [Wish] = []
    
    private func generateMockWishes() {
        let swiftWish = Wish(name: "Learn Swift", description: "TableView, MVC, Singleton")
        let wordsWish = Wish(name: "Learn 500 English words", description: nil)
        let visitWish = Wish(name: "Visit Paris", description: nil)
        newWishes = [swiftWish, wordsWish, visitWish]
    }
    
    func addWish(_ wish: Wish) {
        newWishes.insert(wish, at: 0)
    }
    
    func markAsDone(_ wish: Wish) {
        guard let removeIndex = newWishes.firstIndex(of: wish) else { return }
        newWishes.remove(at: removeIndex)
        doneWishes.insert(wish, at: 0)
    }
}
