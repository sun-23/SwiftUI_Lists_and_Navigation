//
//  ContentView.swift
//  SwiftUI_ListAndNavigation
//
//  Created by sun on 22/6/2562 BE.
//  Copyright © 2562 sun. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    
    var landmark:Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image(forSize: 250))
                .offset(x: 0, y: -80
                )
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .offset(x: 0, y: 40)
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }.offset(x: 0, y: 40)
                }
                .padding()
            
            Spacer()
        }.navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[3])
    }
}
#endif
