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
}

struct Icons {
    let logo = Image("logo")
    let startButton = Image("startButton")
    let startButton1 = Image("startButton1")
    let startOver = Image("startOver")
    let playAgain = Image("playAgain")
    let background = Image("Background")
    let background2 = Image("Background2")
    let startBg = Image("startBG")
    let whatDCup = Image("whatDCup")
    let gameOverBG = Image("GameOverBG")
    let loseText = Image("LoseText")
    let winText = Image("WinText")
    let lineHeart = Image("EmptyHeart")
    let fillHeart = Image("FillHeart")
}

