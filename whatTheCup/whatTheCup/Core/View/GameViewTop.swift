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
                            CharacterData().homer.image
                                .resizable()
                                .frame(width: 100, height: 100)
                            Spacer()
                            VStack {
                                Spacer()
                                CharacterData().tinker.image
                                    .resizable()
                                .frame(width: 100, height: 100)
                            }
                            CharacterData().mage.image
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                        HStack {
                            CharacterData().vampire.image
                                .resizable()
                                .frame(width: 100, height: 100)
                            VStack {
                                Spacer()
                                CharacterData().werewolf.image
                                    .resizable()
                                .frame(width: 100, height: 100)
                            }
                            Spacer()
                            CharacterData().thor.image
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                        HStack {
                            CharacterData().alien.image
                                .resizable()
                                .frame(width: 100, height: 100)
                            VStack {
                                Spacer()
                                CharacterData().goblin.image
                                    .resizable()
                                .frame(width: 100, height: 100)
                            }
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

#Preview {
    GameViewTop()
}
