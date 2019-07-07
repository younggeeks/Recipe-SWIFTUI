//
//  SearchInput.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct SearchInput : View {
    @State var searchTerm : String = ""
    var body: some View {
        TextField($searchTerm, placeholder: Text("Dish name"))
            .padding(.leading, 50)
            .padding(.vertical, 22)
            .background(
                HStack{
                    Image(systemName: "magnifyingglass").foregroundColor(Color("iconColor"))
                }.padding(.leading, 25), alignment:  .leading
        )
            .background(Color("inputBg"))
            .cornerRadius(30)
    }
}

#if DEBUG
struct SearchInput_Previews : PreviewProvider {
    static var previews: some View {
        SearchInput()
    }
}
#endif
