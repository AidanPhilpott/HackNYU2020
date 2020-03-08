//
//  CircleImage.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-07.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//
import SwiftUI

struct CircleImage: View {
    var profile: profile

    var body: some View {
        Text(profile.Initials)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding(16.0)
            .padding(4.0)
            .frame(width: 50.0, height: 50.0)
            .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            .cornerRadius(25)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(profile: profileData[0])
    }
}
