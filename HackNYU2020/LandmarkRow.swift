//
//  LandmarkRow.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-07.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct Pokemon {
  let name: String
  let type: String
  let color: Color
}

struct LandmarkRow: View {
    var profile: profile
    
    let generator = UINotificationFeedbackGenerator()
    
    var body: some View {
        Button(action: {
            self.generator.notificationOccurred(.success)
        }) {
            HStack {
                Text(profile.Initials)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(16.0)
                .padding(4.0)
                .frame(width: 50.0, height: 50.0)
                    .background(Color("Neutral"))
                .cornerRadius(25)
                VStack(alignment: .leading) {
                    Text(profile.name)
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Text"))
                    if profile.Update {
                            Text("Last Contact 5 weeks ago. Reach Out?")
                            .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("Orange1"))
                    }else{
                        Text(profile.lastUpdate)
                        .font(.caption)
                        .foregroundColor(Color("Sub"))
                    }
                }
                .padding(.leading, 8.0)
                Spacer()
                if profile.color {
                        Text(profile.type)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 16.0)
                        .padding(.vertical, 8.0)
                            .background(/*@START_MENU_TOKEN@*/Color("LightPurple")/*@END_MENU_TOKEN@*/)
                        .cornerRadius(16)
                }else{
                    Text(profile.type)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 16.0)
                    .padding(.vertical, 8.0)
                    .background(/*@START_MENU_TOKEN@*/Color("Orange1")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(16)
                }
            }
            .padding([.top, .leading, .bottom], 12.0)
        }
        }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(profile: profileData[0])
    }
}
