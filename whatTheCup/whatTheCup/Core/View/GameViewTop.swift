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
            
            NavigationLink(destination: HomerView(), isActive: $GameTopVM.homerView) {EmptyView()}
            NavigationLink(destination: ThorView(), isActive: $GameTopVM.thorView) {EmptyView()}
            NavigationLink(destination: TinkerMageView(), isActive: $GameTopVM.tinkerMageView) {EmptyView()}
            NavigationLink(destination: VampireWolfView(), isActive: $GameTopVM.vampireMageView) {EmptyView()}
            NavigationLink(destination: EverybodyView(), isActive: $GameTopVM.everybodyView) {EmptyView()}
            
            VStack {
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
                Image.icon.logo // IMAGEM DO BARTENDER
                    .resizable()
                    .frame(width: 150, height: 150)
                ZStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width, height: 100)
                        .foregroundColor(.gray)
                    HStack(spacing: 32.0) {
                        Circle()
                            .frame(width: 40, height: 40)
                        Circle()
                            .frame(width: 40, height: 40)
                        Circle()
                            .frame(width: 40, height: 40)
                        Circle()
                            .frame(width: 40, height: 40)
                    }
                }
                ZStack {
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    VStack {
                        HStack {
                            Button {
                                GameTopVM.charClicked(name: CharacterData().homer.costume)
                            } label: {
                                CharacterData().homer.image
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                            Spacer()
                            VStack {
                                Spacer()
                                Button {
                                    GameTopVM.charClicked(name: CharacterData().tinker.costume)
                                } label: {
                                    CharacterData().tinker.image
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                }
                            }
                            Button {
                                GameTopVM.charClicked(name: CharacterData().mage.costume)
                            } label: {
                                CharacterData().mage.image
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        HStack {
                            Button {
                                GameTopVM.charClicked(name: CharacterData().vampire.costume)
                            } label: {
                                CharacterData().vampire.image
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                            VStack {
                                Spacer()
                                Button {
                                    GameTopVM.charClicked(name: CharacterData().werewolf.costume)
                                } label: {
                                    CharacterData().werewolf.image
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                }
                            }
                            Spacer()
                            Button {
                                GameTopVM.charClicked(name: CharacterData().thor.costume)
                            } label: {
                                CharacterData().thor.image
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                        }
                        HStack {
                            Button {
                                GameTopVM.charClicked(name: CharacterData().alien.costume)
                            } label: {
                                CharacterData().alien.image
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                            VStack {
                                Spacer()
                                Button {
                                    GameTopVM.charClicked(name: CharacterData().goblin.costume)
                                } label: {
                                    CharacterData().goblin.image
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                }
                            }
                            Button {
                                GameTopVM.charClicked(name: CharacterData().zombie.costume)
                            } label: {
                                CharacterData().zombie.image
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    GameViewTop()
}
