//
//  GameOverView.swift
//  whatTheCup
//
//  Created by Miriam Rayane Mendes da Silva on 06/04/24.
//

import SwiftUI

struct GameOverView: View {
    let gameWon: Bool
    let score: Int
    
    var body: some View {
        ZStack{
            Image.icon.gameOverBG
                .ignoresSafeArea()
            VStack(spacing: 40.0){
                VStack(spacing: 16){
                    VStack {
//                        Text(gameWon ? "YOU WIN!!" : "YOU LOST!!")
//                            .font(.largeTitle)
//                            .fontWeight(.regular)
//                            .foregroundColor(.white)
                        if gameWon {
                            Image.icon.winText
                        }
                        else{
                            Image.icon.loseText
                        }
                    }
                    if gameWon && (score > 1) {
                        HStack{
                            if score == 2 {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star")
                                Image(systemName: "star")
                            } else if score == 3 {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star")
                            } else if score == 4 {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                    }
                }
                
                Image(gameWon ? "bunny" : "loseBunny")
                    .resizable()
                    .scaledToFit()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                       label: {
                    ZStack{
                        if gameWon{
                            NavigationLink(destination: HomeView()) {
                                Image.icon.playAgain
                            }
                        }
                        else{
                            NavigationLink(destination: HomeView()) {
                                Image.icon.startOver
                            } 
                        }
                    }
                })
            }
            .onAppear{
                playSoundtrack(sound: gameWon ? "gameWin" : "gameOver")
            }
        }
    }
}

#Preview {
    GameOverView(gameWon: true, score: 4)
}
