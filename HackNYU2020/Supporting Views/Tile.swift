//
//  Tile.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-07.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct Tile: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Stage 1")
                    .font(.headline)
                Text("Something here")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                    .frame(height: 12.0)
                Text("How to get the thing...")
        .foregroundColor(Color("Title"))
                    .padding(.top)
                    .font(.body)
                Text("Learn more")
                .foregroundColor(Color("Title"))
                    .font(.subheadline)
            }
            Spacer()
        }
    .foregroundColor(Color("DarkBlue2"))
        .padding(.all, 22.0)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 1)
    }
}

struct Tile_Previews: PreviewProvider {
    static var previews: some View {
        Tile()
    }
}
