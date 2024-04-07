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
    static let chars = Chars()
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
    let background3 = Image("BACKGROUND_REAL")
    let dialogueBox = Image("Box")
    let arrow = Image("Seta_Dialogo")
    let bunny = Image("Bunny")
    let score2 = Image("score2")
    let arrowLeft = Image("Arrow_Left")
    let bgFinalnoCup = Image("BackgroundFinal1")
    let bgFinal1Cup = Image("BackgroundFinal2")
    let bgFinal4Cup = Image("BackgroundFinal3")
    let bgFinalBlur = Image("BackgroundFinalBlur")
    let bgCup = Image("BackgroundCup")
    let loseBunny = Image("loseBunny")
    let DrinkBG = Image("DrinkBG")
}

struct Drinks {
    let beer = Image("Beer")
    let bloodyMary = Image("Bloody Mary")
    let coke = Image("Coquinha")
    let gemada = Image("Gemada")
}

struct Chars {
    let homer = Image("Homer")
    let homerHead = Image("HomerHead")
    let werewolf = Image("Werewolf")
    let werewolfHead = Image("WerewolfHead")
    let goblin = Image("Goblin")
    let goblinHead = Image("GoblinHead")
    let vampire = Image("")
    let vampireHead = Image("")
    let alien = Image("")
    let alienHead = Image("")
}

