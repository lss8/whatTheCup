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
    @Published var soundState2 = true
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
        ("Bloody Mary", Image.drinks.bloodyMary, CharacterData().vampire.costume),
        ("Beer", Image.drinks.beer, CharacterData().homer.costume),
        ("Coke", Image.drinks.coke, CharacterData().goblin.costume),
        ("Eggnog", Image.drinks.gemada, "That's my cup!!")
    ]
    
    @Published var onboardingDialogue: [String] = [
        "Hello, there! Good evening, fella. Welcome to The Cyber Cup Carnival, what is gonna be tonight?",
        "Here you go! Hope you enjoy the evening carefully... CAREFULLY!",
        "OH MY GOD! Look at the cups! It's a mess! ", 
        "You can discover wich one is your cup by helping me find out whose cup is whose. Hint: talk and observe the people around the party.",
        "Select the cup to define who you think it belongs to. For each cup you guess right you get a bar point for the next carnival.", 
        "But I should tell you: you shoud only drink from a cup that you're SURE it's yours."
    ]
    
    func charClicked(name: String) {
        if name == CharacterData().homer.costume {
            homerView = true
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
