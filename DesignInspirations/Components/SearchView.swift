//
//  SearchView.swift
//  DesignInspirations
//
//  Created by Samwel Charles on 07/07/2019.
//  Copyright © 2019 Samwel Charles. All rights reserved.
//

import SwiftUI

struct SearchView : View {
    var body: some View {
        HStack(){
            SearchInput()
            SearchButton()
        }.padding(.leading, 20)
    }
}

#if DEBUG
struct SearchView_Previews : PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
#endif
