//
//  LandmarkRow.swift
//  SwiftUI_ListAndNavigation
//
//  Created by sun on 22/6/2562 BE.
//  Copyright © 2562 sun. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    
    var landmark:Landmark
    
    var body: some View {
        
        HStack{
            landmark.image(forSize: 50).clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
            Text(landmark.name)
            Spacer()
        }.padding(.leading, 10)
        
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        
        Group {
        LandmarkRow(landmark: landmarkData[0])
        LandmarkRow(landmark: landmarkData[1])
            
        }.previewLayout(.fixed(width: 300, height: 70)) // fixed previewLayout size
        
    }
}
#endif
