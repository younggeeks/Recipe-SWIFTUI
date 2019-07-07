//
//  ContentView.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView{
            VStack(spacing:30){
                VStack{
                    SearchView()
                    TopMenu(menuData: RecipeDataStore())
                    TrendingMenus()
                }
                    .padding(.bottom, 40)
                    .background(Color.white)
              
                Spacer()
                
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
            
            }.background(Color("bottomColor")).edgesIgnoringSafeArea(.bottom)
        }
            .navigationBarTitle(Text("Search"), displayMode: .large)
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


func submitted(){
    print("clicked")
}
