//
//  Character.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import Foundation
import SwiftUI

struct Character: Identifiable, Hashable {
    
    let id: Int
    let costume: String
    let drink: String
    let image: Image
    
    init(id: Int, costume: String, drink: String, image: Image) {
        self.id = id
        self.costume = costume
        self.drink = drink
        self.image = image
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
