//
//  CupView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct CupView: View {
    @StateObject var GameTopVM: GameViewTopModel
    @State var cupCounter = 0
    
    init() {
        _GameTopVM = StateObject(wrappedValue: GameViewTopModel())
    }
    
    var body: some View {
        ZStack {
            Image("HalfBG")
                .ignoresSafeArea()
            
            NavigationLink(destination: GameOverView(gameWon: false, score: GameTopVM.score), isActive: $GameTopVM.gameLost) {EmptyView()}
            NavigationLink(destination: GameOverView(gameWon: true, score: GameTopVM.score), isActive: $GameTopVM.gameWon) {EmptyView()}
            
            VStack(spacing: 36.0) {
                HStack {
                    Spacer()
                    Button {
                        GameTopVM.soundState.toggle()
                    } label: {
                        if GameTopVM.soundState {
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(.black)
                        } else {
                            Image(systemName: "speaker.slash.fill")
                                .foregroundColor(.black)
                        }
                    }
                }
                VStack {
                    HStack {
                        Text("Suspects")
                            .foregroundStyle(.gray)
                        Spacer()
                    }
                    .padding(.horizontal, 32.0)
                }
                VStack(spacing: 64.0) {
                    HStack(spacing: 64.0) {
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().homer.costume)
                        } label: {
                            CharacterData().homer.head
                                .frame(width: 50, height: 50)
                        }
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().vampire.costume)
                        } label: {
                            CharacterData().vampire.head
                                .frame(width: 50, height: 50)
                        }
                    }
                    HStack(spacing: 64.0) {
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().werewolf.costume)
                        } label: {
                            CharacterData().werewolf.head
                                .frame(width: 50, height: 50)
                        }
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().goblin.costume)
                        } label: {
                            CharacterData().goblin.head
                                .frame(width: 50, height: 50)
                        }
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().alien.costume) 
                        } label: {
                            CharacterData().alien.head
                                .frame(width: 50, height: 50)
                        }
                    }
                }
                VStack {
                    GameTopVM.drinks[cupCounter].imagem // BEBIDAS
                        .resizable()
                        .frame(width: 256, height: 320)
                    HStack {
                        Button {
                            if cupCounter > 0 {
                                cupCounter = cupCounter - 1
                            }
                        } label: {
                            Image(systemName: "arrow.left")
                        }
                        Text(String(cupCounter+1))
                        Button {
                            if cupCounter < 3 {
                                cupCounter = cupCounter + 1
                            }
                        } label: {
                            Image(systemName: "arrow.right")
                        }
                    }
                }
                VStack {
                    Text("If you think this is your cup...")
                    Button {
                        GameTopVM.guessCup(num: cupCounter, name: "That's my cup!!")
                    } label: {
                        Image("DrinkButton")
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    CupView()
}
