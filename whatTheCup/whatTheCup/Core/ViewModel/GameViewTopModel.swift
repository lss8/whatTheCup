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
    
    @Published var gameWon = false
    @Published var gameLost = false
    
    @Published var score = 0
    
    @Published var drinks: [(nome: String, imagem: Image, bebado: String)] = [
        ("Bloody Mary", Image("Cup"), CharacterData().vampire.costume),
        ("Beer", Image("Cup"), CharacterData().homer.costume),
        ("Coke", Image("Cup"), CharacterData().goblin.costume),
        ("Eggnog", Image("Cup"), "Esse é o meu!")
    ]
    
    func charClicked(name: String) {
        if name == CharacterData().homer.costume {
            homerView = true
        } else if name == CharacterData().thor.costume {
            thorView = true
        } else if name == CharacterData().vampire.costume || name == CharacterData().werewolf.costume {
            vampireMageView = true
        } else {
            everybodyView = true
        }
    }
    
    func guessCup(num: Int, name: String) {
        if num != 3 {
            if drinks[num].bebado == name {
                score += 1
            } else {
                gameLost = true
            }
        } else {
            if drinks[num].bebado == name {
                score += 1
                gameWon = true
            } else {
                gameLost = true
            }
        }
        
    }
    
}
