//
//  LandmarkDetail.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-07.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var profile: profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Spacer()
                            .frame(height: 125.0)
                        Text(profile.Initials)
                            .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(16.0)
                        .padding(4.0)
                        .frame(width: 75.0, height: 75.0)
                            .background(Color("Profile"))
                        .cornerRadius(50)
                        Text(profile.name.self)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top)
                        .   foregroundColor(Color("Text"))
                        Text(profile.lastUpdate)
                            .padding(.top, 8.0)
                            .padding(.bottom, 16.0)
                            .foregroundColor(Color("Sub"))
                        HStack {
                            if profile.color {
                                    Text(profile.type)
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .padding(.horizontal, 22.0)
                                    .padding(.vertical, 10.0)
                                .background(/*@START_MENU_TOKEN@*/Color("LightPurple")/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(20)
                            }else{
                                Text(profile.type)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .padding(.horizontal, 22.0)
                                .padding(.vertical, 10.0)
                                .background(/*@START_MENU_TOKEN@*/Color("Orange1")/*@END_MENU_TOKEN@*/)
                                .cornerRadius(16)
                            }
                            Spacer()
                            HStack {
                                Button(action: {}) {
                                    Image(systemName: "globe").padding(.leading).imageScale(.large).foregroundColor(Color("Sub"))
                                }
                                Button(action: {}) {
                                    Image(systemName: "square.and.pencil").padding(.leading).imageScale(.large).foregroundColor(Color("Sub"))
                                }
                            }
                        }
                    }
                    Spacer()
                }
                .padding(.bottom, 36.0)
                .padding(.horizontal, 22.0)
                .background(/*@START_MENU_TOKEN@*/Color("Back")/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Text("Title")
                            .font(.subheadline)
                    }.padding(.top, 22.0).foregroundColor(Color("Sub"))
                    Text(profile.title)
                        .font(.body)
                        .foregroundColor(Color("Text"))
                    HStack(alignment: .center) {
                        Text("Email")
                            .font(.subheadline)
                    }.padding(.top, 12.0).foregroundColor(Color("Sub"))
                    Text(profile.Email)
                        .font(.body)
                        .foregroundColor(Color("Text"))
                    HStack(alignment: .center) {
                        Text("Phone")
                            .font(.subheadline)
                    }.padding(.top, 12.0).foregroundColor(Color("Sub"))
                    Text(profile.Phone)
                        .font(.body)
                        .foregroundColor(Color("Text"))
                }
                .padding(.horizontal, 22.0)
                VStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Text("Latest Meeting")
                            .font(.subheadline)
                            .foregroundColor(Color("Sub"))
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "plus.circle").imageScale(.large).foregroundColor(Color("Sub"))
                        }
                    }
                    .padding(.bottom)
                    .padding(.top, 36.0)
                    HStack {
                        VStack(alignment: .leading) {
                            Text(profile.MDate)
                                .font(.headline)
                                .foregroundColor(Color("DarkBlue2"))
                                .padding(.bottom, 8.0)
                            Text(profile.Meeting)
                                .font(.body)
                                .foregroundColor(Color("Sub"))
                        }
                        Spacer()
                    }
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*/Color("Back")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(8)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*/Color("Back")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(8)
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Meeting Notes/Talking Points")
                                .font(.subheadline)
                                .foregroundColor(Color("Sub"))
                            Spacer()
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "plus.circle").imageScale(.large).foregroundColor(Color("Sub"))
                            }
                        }                        .padding(.top, 26.0)
                        Text("Add a note about this connection.")
                            .font(.subheadline)
                            .padding(.top, 4.0)
                            .padding(.bottom, 16.0)
                        HStack(alignment: .center) {
                            VStack(alignment: .leading) {
                                Text(profile.Interests)
                                    .font(.headline)
                                    .foregroundColor(Color("DarkBlue2"))
                            }
                            Spacer()
                            Image(systemName: "square.and.pencil").imageScale(.large).foregroundColor(Color("Sub"))
                        }
                        .padding(.all)
                        .background(/*@START_MENU_TOKEN@*/Color("Back")/*@END_MENU_TOKEN@*/)
                        .cornerRadius(8)
                        Spacer()
                            .frame(height: 8.0)
                    }
                }
                .padding(.horizontal, 22.0)
                Spacer()
                    .frame(height: 22.0)
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(profile: profileData[0])
    }
}
