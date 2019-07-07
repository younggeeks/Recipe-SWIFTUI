//
//  BottomMenu.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct BottomMenu : View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "location.circle")
                Text("Discover")
            }.foregroundColor(.white)
            Spacer()
            
            VStack{
                Image(systemName: "cart")
                Text("Ingredients")
            }.foregroundColor(Color("fadeWhite"))
            Spacer()
            
            
            VStack{
                Image(systemName: "person")
                Text("Profile")
            }.foregroundColor(Color("fadeWhite"))
        }.padding(.horizontal, 40).padding(.bottom, 100)
    }
}

#if DEBUG
struct BottomMenu_Previews : PreviewProvider {
    static var previews: some View {
        BottomMenu()
    }
}
#endif
