//
//  HikeDetail.swift
//  Hiking
//
//  Created by Pushpank Kumar on 11/1/19.
//  Copyright © 2019 Pushpank Kumar. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        
        VStack {
            Image(hike.imageURL)
            .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
            }
            
            Text(hike.name)
            Text(String(format: "%.2f",hike.miles))
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    
    
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Angels Landing", imageURL: "tam", miles: 10.0))
    }
}
