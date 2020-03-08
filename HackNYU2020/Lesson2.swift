//
//  Lesson2.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-08.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct Lesson2: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Stage 2")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Text"))
                        Text("Establishing Connections")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Text"))
                    }
                    Spacer()
                }
                .padding(.bottom, 36.0)
                Text("Best practices and guidelines for establishing and maintaining professional connections.")
                    .font(.body)
                    .foregroundColor(Color("Title"))
                Spacer()
                .frame(height: 22.0)
                Text("Seek out the best opportunities. There is an old saying: Fish where the fish are. One key to successful networking is to identify places, events, and groups that cater to the kind of people you want to meet. ")
                .foregroundColor(Color("Title"))
                .padding(.bottom)
                Image("Lesson2").resizable().frame(height: 200.0)
                Spacer()
                .frame(height: 22.0)
                Text("Choosing the right opportunities will help you to best utilize your time and enable you to focus on building the right kinds of relationships to help your business.")
                .foregroundColor(Color("Title"))
                Spacer()
            }
            .padding(.horizontal, 16.0)
            Spacer()
        }
    }
}

struct Lesson2_Previews: PreviewProvider {
    static var previews: some View {
        Lesson2()
    }
}
