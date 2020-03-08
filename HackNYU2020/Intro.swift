//
//  Intro.swift
//  HackNYU2020
//
//  Created by Adam Crosby on 2020-03-08.
//  Copyright © 2020 Adam Crosby. All rights reserved.
//

import SwiftUI

struct Intro: View {
    var body: some View {
        VStack {
            Image("logo")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
