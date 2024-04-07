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
        image: Image.chars.homer,
        head: Image.chars.homerHead)
    
    let vampire: Character = Character(
        id: 1,
        costume: "Vampire",
        drink: "Bloody Mary",
        image: Image.icon.logo,
        head: Image.icon.startButton)
    
    let werewolf: Character = Character(
        id: 2,
        costume: "Werewolf",
        drink: "",
        image: Image.chars.werewolf,
        head: Image.chars.werewolfHead)
    
    let goblin: Character = Character(
        id: 3,
        costume: "Goblin",
        drink: "Coke",
        image: Image.chars.goblin,
        head: Image.chars.goblinHead)
    
    let alien: Character = Character(
        id: 4,
        costume: "Alien",
        drink: "",
        image: Image.icon.logo,
        head: Image.icon.startButton)
}
