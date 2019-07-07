//
//  MenuItemView.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct MenuItemView : View {
    @ObjectBinding var menuData : RecipeDataStore
    
    var menuItem: MenuItem
    var body: some View {
        Button(action: {
            self.menuData.selectMenu(self.menuItem.id)
            print("selected", self.menuData.selectedMenu)
            
        }) {
            VStack{
                Image(menuItem.image).resizable().frame(width:30,height: 30)
                Text(menuItem.title)
            }.foregroundColor(self.menuData.selectedMenu.id == menuItem.id ? Color("primaryColor") : Color.gray)
        }
    }
}

