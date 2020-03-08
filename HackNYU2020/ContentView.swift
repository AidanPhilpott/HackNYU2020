//
//  ContentView.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-07.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI
import UserNotifications

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    let impactFeedbackgenerator = UIImpactFeedbackGenerator(style: .light)
    let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
 
    var body: some View {
        TabView(selection: $selection){
            LandmarkList()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Contact")
                    }
                }
                .tag(0)
            Learning()
                .animation(.easeIn(duration: 5))
                .tabItem {
                    VStack {
                        Image(systemName: "book")
                        Text("Learning")
                    }
                }
                .tag(1)
            myAccount()
                .animation(.easeIn(duration: 5))
            .tabItem {
                VStack {
                    Image(systemName: "gear")
                    Text("My Account")
                }
            }
            .tag(2)
        }.edgesIgnoringSafeArea(.top)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
