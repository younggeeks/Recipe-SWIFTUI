//
//  Meal.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct Meal : Identifiable {
    var id  = UUID()
    var name : String
    var image : String
    var rating : Double
    var isFavorite: Bool
    var category: String
    
    

}
