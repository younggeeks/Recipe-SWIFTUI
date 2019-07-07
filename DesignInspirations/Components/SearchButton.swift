//
//  SearchButton.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct SearchButton : View {
    var body: some View {
        Button(action: submitted) {
            HStack{
                 Image(systemName: "doc.text.viewfinder").foregroundColor(Color.white)
                Spacer()
            }
           
        }.frame(width:40).padding(25)
            .background(Color("primaryColor")).cornerRadius(30).offset(x:30)
    }
}

#if DEBUG
struct SearchButton_Previews : PreviewProvider {
    static var previews: some View {
        SearchButton()
    }
}
#endif
