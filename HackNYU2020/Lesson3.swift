//
//  Lesson3.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-08.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct Lesson3: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Stage 1")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Text"))
                        Text("Finding Connections")
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
                Text("Commit yourself to networking. If you are attending a networking event, mentally prepare yourself in advance to initiate conversations and make connections. ")
                .foregroundColor(Color("Title"))
                Spacer()
                .frame(height: 22.0)
                Image("Lesson3").resizable().frame(height: 200.0)
                Spacer()
                .frame(height: 22.0)
                Text("If you are truly committed to meeting new people, this may mean sitting with strangers, moving around the room to different spots, joining in on conversations, and developing other behaviors that you may not be naturally inclined to do. Step out of your comfort zone and be open to the possibilities.")
                .foregroundColor(Color("Title"))
                Spacer()
            }
            .padding(.horizontal, 16.0)
            Spacer()
        }
    }
}

struct Lesson3_Previews: PreviewProvider {
    static var previews: some View {
        Lesson3()
    }
}
