//
//  MealCard.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct MealCard : View {
    var meal:Meal

    var body: some View {
        VStack(){
            Image(meal.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180 ,height:180)
            Text(meal.name)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
            .padding(20)
            
            Button(action: {
                
               print("this is not what we planne ")
            }) {
                HStack(){
                    Image(systemName:meal.isFavorite ?  "star.fill" : "star" ).resizable().frame(width:12, height:12)
                        .foregroundColor(meal.isFavorite ? Color("secondaryColor") : Color.gray)
                    Text(String(meal.rating)).color(.black).font(.subheadline)
                }.padding(.horizontal, 10)
            }.background(Color.white).cornerRadius(10)

            
        }
        .frame(width: 200, height: 350, alignment: .center)
        .background(Color("mealBg\(Int.random(in: 1 ... 7))"))
        .cornerRadius(30)
    }
    
}

