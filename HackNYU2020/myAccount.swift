//
//  myAccount.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-07.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct myAccount: View {
    
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        Text("Turn on notifications")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Text"))
                    }
                    Text("Get notified on when to follow-up on your professional connections.")
                        .padding(.top, 4.0)
                        .foregroundColor(Color("Sub"))
                }
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*/Color("Back")/*@END_MENU_TOKEN@*/)
                .cornerRadius(8.0)
            Spacer()
            .navigationBarTitle("Settings")
            }
            .padding([.top, .leading, .trailing])
        }

    }
}

struct myAccount_Previews: PreviewProvider {
    static var previews: some View {
        myAccount()
    }
}
