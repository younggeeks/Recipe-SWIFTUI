//
//  RecipeDataStore.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI
import Combine

class RecipeDataStore : BindableObject {
    
    var didChange = PassthroughSubject<Void, Never>()
    
    var selectedMenu: MenuItem = MenuItem(title: "", image: "") {
        didSet{
            didChange.send()
        }
    }
    
    
    func selectMenu(_ id:UUID) {
        selectedMenu =  menuItems.first(where: { $0.id == id })!
    }
    
    var menuItems : [MenuItem] = [
        MenuItem(title: "Swahili", image: "swahili"),
        MenuItem(title: "Italian", image: "italian"),
        MenuItem(title: "Japanese", image: "japanese"),
        MenuItem(title: "American", image: "american"),
         MenuItem(title: "Thai", image: "thai"),
        ]{
        didSet{
            didChange.send()
        }
    }
    
    
    var meals: [Meal] = [
          Meal(name: "Ugali Samaki", image: "ugali", rating: 10.0, isFavorite: true, category: "swahili"),
      
        Meal(name: "American Burger", image: "burger", rating: 3.8, isFavorite: false, category: "american"),
          Meal(name: "Royal Paddington Thai Recipe", image: "noodles", rating: 9.8, isFavorite: true, category: "thai"),
          Meal(name: "Noodles", image: "biryan", rating: 8.0, isFavorite: true, category: "swahili")
        
      
        
    ]
}
