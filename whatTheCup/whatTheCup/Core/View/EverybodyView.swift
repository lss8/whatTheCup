//
//  EverybodyView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct EverybodyView: View {
    @StateObject var GameTopVM: GameViewTopModel
    
    init() {
        _GameTopVM = StateObject(wrappedValue: GameViewTopModel())
    }
    
    var body: some View {
        ZStack {
            Image.icon.bgFinalBlur
                .ignoresSafeArea()
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
                .padding(.horizontal, 32.0)
                ZStack {
                    HStack {
                        CharacterData().alien.image
                        CharacterData().goblin.image
                    }
                    VStack {
                        Spacer()
                        HStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 72, height: 32)
                                Text(CharacterData().alien.costume)
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.yellow)
                            }
                            Spacer()
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 56)
                            Text("This party is ok, I guess. The music is too loud, though.")
                                .font(.custom(.pixellari, size: 20.0))
                                .foregroundStyle(.yellow)
                        }
                        HStack {
                            Spacer()
                            ZStack {
                                Rectangle()
                                    .frame(width: 72, height: 32)
                                Text(CharacterData().goblin.costume)
                                    .foregroundStyle(.yellow)
                                    .font(.custom(.pixellari, size: 20.0))
                            }
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 56)
                            Text("Relax, man! You should be more like that Simpson dude. He's super into this party - his costume is sick!")
                                .font(.custom(.pixellari, size: 20.0))
                                .foregroundStyle(.yellow)
                        }
                    }
                    .padding(.horizontal, 16.0)
                }
            }
            .padding(.vertical, 64.0)
        }
    }
}

#Preview {
    EverybodyView()
}
