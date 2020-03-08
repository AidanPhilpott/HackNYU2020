/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual landmark.
*/

import SwiftUI
import CoreLocation

struct profile: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var lastUpdate: String
    var type: String
    var Initials: String
    var title: String
    var color: Bool
    var imageName: String
    var Email: String
    var Website: String
    var Phone: String
    var Update: Bool
    var Interests: String
    var Meeting: String
    var MDate: String
}

extension profile {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
