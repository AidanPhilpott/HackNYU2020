//
//  LandmarkList.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-07.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var show_modal: Bool = false
    
    let generator = UINotificationFeedbackGenerator()
    
    var body: some View {
        NavigationView {
            List(profileData) { landmark in
            NavigationLink(destination: LandmarkDetail(profile: landmark)) {
                    LandmarkRow(profile: landmark)
                }
            }
    .navigationBarTitle("Contacts")
            .navigationBarItems(trailing:
                HStack {
                    Button(action: {
                    self.generator.notificationOccurred(.success)
                    let content = UNMutableNotificationContent()
                    content.title = "Hello!"
                    content.body = "It's been a while since you've contacted Jason Daniels, reach out to strengthen your connection."
                    content.sound = UNNotificationSound.default

                    // show this notification five seconds from now
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                    // choose a random identifier
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                    // add our notification request
                    UNUserNotificationCenter.current().add(request)
                    }) {
                        Image(systemName: "bell").imageScale(.large)
                    }
                    Spacer()
                    Button(action: {
                        print("Button Pushed")
                        self.show_modal = true;
                    self.generator.notificationOccurred(.success)
                    }) {
                        Image(systemName: "plus.circle").imageScale(.large)
                    }.sheet(isPresented: self.$show_modal) {
                         ModalView()
                        }
                    .padding()
                }.foregroundColor(Color("Blue1"))
            )
                
        }
    }
}

struct ModalView: View {
    var body: some View {
        VStack {
            Image("logo").resizable().frame(width: 100.0, height: 100.0)
            Text("Add New Connection")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom)
                .padding(.top, 22.0)
            TextField("Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*/Color("Neutral")/*@END_MENU_TOKEN@*/)
                .cornerRadius(8.0)
            TextField("Phone", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding(.all)
            .background(/*@START_MENU_TOKEN@*/Color("Neutral")/*@END_MENU_TOKEN@*/)
            .cornerRadius(8.0)
            TextField("Title", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding(.all)
            .background(/*@START_MENU_TOKEN@*/Color("Neutral")/*@END_MENU_TOKEN@*/)
            .cornerRadius(8.0)
            TextField("Email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding(.all)
            .background(/*@START_MENU_TOKEN@*/Color("Neutral")/*@END_MENU_TOKEN@*/)
            .cornerRadius(8.0)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                VStack(alignment: .center) {
                    HStack {
                        Spacer()
                        Text("Save")
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                }
                .padding(.vertical)
                .background(Color("Button"))
                .cornerRadius(8.0)
            }
            .padding(.top, 8.0)
        }
        .padding(.horizontal, 16.0)
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
