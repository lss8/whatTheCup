//
//  CharacterData.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import Foundation
import SwiftUI

struct CharacterData {
    let mage: Character = Character(
        id: 0,
        costume: "Mage",
        drink: "",
        image: Image.icon.startButton)
    
    let tinker: Character = Character(
        id: 1,
        costume: "Tinker",
        drink: "Bloody Mary",
        image: Image.icon.logo)
    
    let homer: Character = Character(
        id: 2,
        costume: "Homer",
        drink: "Beer",
        image: Image.icon.logo)
    
    let thor: Character = Character(
        id: 3,
        costume: "Thor",
        drink: "",
        image: Image.icon.logo)
    
    let vampire: Character = Character(
        id: 4,
        costume: "Vampire",
        drink: "",
        image: Image.icon.logo)
    
    let werewolf: Character = Character(
        id: 5,
        costume: "Werewolf",
        drink: "",
        image: Image.icon.logo)
    
    let zombie: Character = Character(
        id: 6,
        costume: "Zombie",
        drink: "",
        image: Image.icon.logo)
    
    let goblin: Character = Character(
        id: 7,
        costume: "Goblin",
        drink: "Coke",
        image: Image.icon.logo)
    
    let alien: Character = Character(
        id: 8,
        costume: "Alien",
        drink: "",
        image: Image.icon.logo)
}
