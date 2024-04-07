//
//  GameViewTopModel.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import Foundation
import SwiftUI

class GameViewTopModel: ObservableObject {
    
    @Published var soundState = true
    @Published var homerView = false
    @Published var thorView = false
    @Published var tinkerMageView = false
    @Published var vampireMageView = false
    @Published var everybodyView = false
    @Published var selectedCharacter = ""
    
    @Published var cup1 = "?"
    @Published var cup2 = "?"
    @Published var cup3 = "?"
    @Published var cup4 = "?"
    
    func charClicked(name: String) {
        if name == CharacterData().homer.costume {
            homerView = true
        } else if name == CharacterData().thor.costume {
            thorView = true
        } else if name == CharacterData().tinker.costume || name == CharacterData().mage.costume {
            tinkerMageView = true
        } else if name == CharacterData().vampire.costume || name == CharacterData().werewolf.costume {
            vampireMageView = true
        } else {
            everybodyView = true
        }
    }
    
    func guessCup(num: Int, name: String) {
        
    }
}
