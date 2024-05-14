//
//  Hike.swift
//  DisplayListAndNavigation
//
//  Created by Idris on 13/05/24.
//

import Foundation
struct Hike: Identifiable, Hashable {
    var id: UUID = UUID()
    let name: String
    let photo: String
    let mile: Double
}
