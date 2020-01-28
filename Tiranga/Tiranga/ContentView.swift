//
//  ContentView.swift
//  Tiranga
//
//  Created by Pushpank Kumar on 26/01/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors:[Color("saffaron"), .white, Color("green")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            Image("ashoka_chakra")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
