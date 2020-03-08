//
//  Learning.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-07.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct Learning: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    .frame(height: 22.0)
                Text("Best practices and guidelines for establishing and maintaining professional connections.")
                    .font(.body)
                    .foregroundColor(Color("Title"))
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 36.0)
                
                NavigationLink(destination: Lesson()) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Stage 1:")
                                .font(.title)
                                .fontWeight(.semibold)
                            .foregroundColor(Color("Text"))
                            Text("Finding Connections")
                            .font(.title)
                                .fontWeight(.semibold)
                            .foregroundColor(Color("Text"))
                            Text("How to meet new contacts")
                                .font(.body)
                                .foregroundColor(Color("Sub"))
                                .padding(.bottom)
                            
                            Text("Learn more")
                                .font(.subheadline)
                        }
                        .padding(.all)
                        Spacer()
                    }
                    .background(/*@START_MENU_TOKEN@*/Color("Back")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(8.0)
                }
                Spacer()
                    .frame(height: 16.0)
                NavigationLink(destination: Lesson2()) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Stage 2:")
                                .font(.title)
                                .fontWeight(.semibold)
                            .foregroundColor(Color("Text"))
                            Text("Establishing Connections")
                            .font(.title)
                                .fontWeight(.semibold)
                            .foregroundColor(Color("Text"))
                            Text("How to establish new contacts")
                                .font(.body)
                                .foregroundColor(Color("Sub"))
                                .padding(.bottom)
                            
                            Text("Learn more")
                                .font(.subheadline)
                        }
                        .padding(.all)
                        Spacer()
                    }
                    .background(/*@START_MENU_TOKEN@*/Color("Back")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(8.0)
                }
                Spacer()
                .frame(height: 16.0)
                NavigationLink(destination: Lesson()) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Stage 3:")
                                .font(.title)
                                .fontWeight(.semibold)
                            .foregroundColor(Color("Text"))
                            Text("Maintaining Connections")
                            .font(.title)
                                .fontWeight(.semibold)
                            .foregroundColor(Color("Text"))
                            Text("How to manage connections")
                                .font(.body)
                                .foregroundColor(Color("Sub"))
                                .padding(.bottom)
                            
                            Text("Learn more")
                                .font(.subheadline)
                        }
                        .padding(.all)
                        Spacer()
                    }
                    .background(/*@START_MENU_TOKEN@*/Color("Back")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(8.0)
                }
                Spacer()
            .navigationBarTitle("Learning")
            }
            .padding(.horizontal, 16.0)
        }
    }
}

struct Learning_Previews: PreviewProvider {
    static var previews: some View {
        Learning()
    }
}
