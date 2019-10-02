//
//  LandmarkList.swift
//  SwiftUI_ListAndNavigation
//
//  Created by sun on 22/6/2562 BE.
//  Copyright © 2562 sun. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        
        NavigationView {
            List (landmarkData) { landmark in
                
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
                
            }.navigationBarTitle(Text("Landmark"),displayMode: .automatic)
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
