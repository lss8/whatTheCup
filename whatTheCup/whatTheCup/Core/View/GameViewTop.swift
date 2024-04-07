//
//  GameViewTop.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct GameViewTop: View {
    @StateObject var GameTopVM: GameViewTopModel
    
    init() {
        _GameTopVM = StateObject(wrappedValue: GameViewTopModel())
    }
    
    var body: some View {
        ZStack {
            Image("bgDanceFloor")
                .ignoresSafeArea()
            
            NavigationLink(destination: HomerView(), isActive: $GameTopVM.homerView) {EmptyView()}
            NavigationLink(destination: VampireWolfView(), isActive: $GameTopVM.vampireMageView) {EmptyView()}
            NavigationLink(destination: EverybodyView(), isActive: $GameTopVM.everybodyView) {EmptyView()}
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        GameTopVM.soundState.toggle()
                    } label: {
                        if GameTopVM.soundState {
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(.white)
                        } else {
                            Image(systemName: "speaker.slash.fill")
                                .foregroundColor(.white)
                        }
                    }
                }
                NavigationLink(destination: BartenderView()) {
                    Image("Bartender")
                        .resizable()
                        .frame(width: 150, height: 150)
                }
                ZStack {
                    VStack {
                        HStack {
                            Button {
                                GameTopVM.charClicked(name: CharacterData().vampire.costume)
                            } label: {
                                CharacterData().vampire.head
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                            VStack {
                                Spacer()
                                Button {
                                    GameTopVM.charClicked(name: CharacterData().werewolf.costume)
                                } label: {
                                    CharacterData().werewolf.head
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                }
                            }
                            Button {
                                GameTopVM.charClicked(name: CharacterData().homer.costume)
                            } label: {
                                CharacterData().homer.head
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        HStack {
                            Button {
                                GameTopVM.charClicked(name: CharacterData().alien.costume)
                            } label: {
                                CharacterData().alien.head
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                            VStack {
                                Spacer()
                                Button {
                                    GameTopVM.charClicked(name: CharacterData().goblin.costume)
                                } label: {
                                    CharacterData().goblin.head
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                }
                            }
                        }
                    }
                    .padding(.top, 64.0)
                }
            }
            .padding(.top, 16)
            .padding(.bottom, 64)
            .padding(.trailing, 32)
        }
    }
}

#Preview {
    GameViewTop()
}
