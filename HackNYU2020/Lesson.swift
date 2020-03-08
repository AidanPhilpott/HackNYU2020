//
//  Lesson.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-08.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct Lesson: View {
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
                Image("lesson1").resizable().frame(height: 200.0)
                Spacer()
                .frame(height: 22.0)
                Text("Do your homework. If you are planning on attending an event, research who will be there and identify people that you would like to meet. It may be helpful to look up people and companies on LinkedIn to prepare for potential conversations.")
                    .foregroundColor(Color("Title"))
                    .padding(.bottom)
                Text("Have a plan in mind before you arrive. Choosing the right opportunities will help you to best utilize your time and enable you to focus on building the right kinds of relationships to help your business")
                .foregroundColor(Color("Title"))
                Spacer()
            }
            .padding(.horizontal, 16.0)
            Spacer()
        }
    }
}

struct Lesson_Previews: PreviewProvider {
    static var previews: some View {
        Lesson()
    }
}
