//
//  Image.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import Foundation
import SwiftUI

extension Image {
    static let icon = Icons()
    static let drinks = Drinks()
}

struct Icons {
    let logo = Image("logo")
    let startButton = Image("startButton")
    let startButton1 = Image("startButton1")
    let startOver = Image("startOver")
    let startAgain = Image("startAgain")
    let background = Image("Background")
    let background2 = Image("Background2")
    let startBg = Image("startBG")
    let whatDCup = Image("whatDCup")
    let background3 = Image("BACKGROUND_REAL")
    let dialogueBox = Image("Box")
    let arrow = Image("Seta_Dialogo")
}

struct Drinks {
    let beer = Image("Beer")
    let bloodyMary = Image("Bloody Mary")
    let coke = Image("Coquinha")
    let gemada = Image("Gemada")
}

