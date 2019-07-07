//
//  MenuItem.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct MenuItem : Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var isFavorite: Bool = false
}


