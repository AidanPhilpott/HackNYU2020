//
//  Tag.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-07.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct Tag: View {
    var profile: profile

    var body: some View {
        Text(profile.type)
            .foregroundColor(Color.white)
            .padding(.horizontal, 16.0)
            .padding(.vertical, 4.0)
            .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            .cornerRadius(16)
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(profile: profileData[0])
    }
}
