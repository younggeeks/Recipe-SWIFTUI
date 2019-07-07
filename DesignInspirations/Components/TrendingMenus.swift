//
//  TrendingMenus.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct TrendingMenus : View {
    
    @ObjectBinding  var data: RecipeDataStore = RecipeDataStore()
    
    var body: some View {
        
        VStack(){
            HStack{
                Text("Trending").font(.callout).fontWeight(.light).padding(.vertical, 20)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                ForEach(data.meals){ item in
                        MealCard(meal: item)
                    }
                }
            }
        
            
        }
        .padding(.leading, 20)
    }
}

#if DEBUG
struct TrendingMenus_Previews : PreviewProvider {
    static var previews: some View {
        TrendingMenus()
    }
}
#endif
