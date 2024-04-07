//
//  CharacterData.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import Foundation
import SwiftUI

struct CharacterData {
    let homer: Character = Character(
        id: 0,
        costume: "Homer",
        drink: "Beer",
        image: Image.personagens.homer,
        head: Image.icon.startButton)
    
    
    let vampire: Character = Character(
        id: 2,
        costume: "Vampire",
        drink: "Bloody Mary",
        image: Image.icon.logo,
        head: Image.icon.startButton)
    
    let werewolf: Character = Character(
        id: 3,
        costume: "Werewolf",
        drink: "",
        image: Image.icon.logo,
        head: Image.icon.startButton)
    
    let goblin: Character = Character(
        id: 4,
        costume: "Goblin",
        drink: "Coke",
        image: Image.icon.logo,
        head: Image.icon.startButton)
    
    let alien: Character = Character(
        id: 5,
        costume: "Alien",
        drink: "",
        image: Image.icon.logo,
        head: Image.icon.startButton)
}
