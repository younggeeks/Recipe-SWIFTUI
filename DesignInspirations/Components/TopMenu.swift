//
//  TopMenu.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI
import Combine

struct TopMenu : View {
    
    
    @ObjectBinding var  menuData: RecipeDataStore
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            
                HStack(spacing: 40) {
                
                    ForEach(menuData.menuItems) { (menu:MenuItem) in
                        MenuItemView(menuData: self.menuData, menuItem: menu)
                    }
                    
            }.padding(.top, 30)
        }.padding(.horizontal, 20)
    }
}

