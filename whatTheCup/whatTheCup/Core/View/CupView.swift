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
            Image.icon.bgCup
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
                VStack(spacing: 32.0) {
                    HStack(spacing: 32.0) {
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().homer.costume)
                        } label: {
                            CharacterData().homer.head
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().vampire.costume)
                        } label: {
                            CharacterData().vampire.head
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                    }
                    HStack(spacing: 32.0) {
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().werewolf.costume)
                        } label: {
                            CharacterData().werewolf.head
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().goblin.costume)
                        } label: {
                            CharacterData().goblin.head
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                        Button {
                            GameTopVM.guessCup(num: cupCounter, name: CharacterData().alien.costume) 
                        } label: {
                            CharacterData().alien.head
                                .resizable()
                                .frame(width: 100, height: 100)
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
                            Image.icon.arrowLeft
                                .foregroundColor(.purple)
                        }
                        Text(String(cupCounter+1))
                            .font(.custom(.pixellari, size: 20.0))
                        Button {
                            if cupCounter < 3 {
                                cupCounter = cupCounter + 1
                            }
                        } label: {
                            Image.icon.arrowRight
                                .foregroundColor(.purple)
                        }
                    }
                }
                VStack {
                    Text("If you think this is your cup...")
                        .font(.custom(.pixellari, size: 20.0))
                        .foregroundStyle(.yellow)
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
