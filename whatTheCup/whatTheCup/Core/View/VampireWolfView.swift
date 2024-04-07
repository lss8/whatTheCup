//
//  VampireWolfView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct VampireWolfView: View {
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
                        CharacterData().vampire.image
                        CharacterData().werewolf.image
                    }
                    VStack {
                        Spacer()
                        HStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 72, height: 32)
                                Text(CharacterData().vampire.costume)
                                    .foregroundStyle(.yellow)
                            }
                            Spacer()
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 56)
                            Text("I think I'm going to throw up… HELL YEAH!!")
                                .foregroundStyle(.yellow)
                        }
                        HStack {
                            Spacer()
                            ZStack {
                                Rectangle()
                                    .frame(width: 72, height: 32)
                                Text(CharacterData().werewolf.costume)
                                    .foregroundStyle(.yellow)
                            }
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 56)
                            Text("Let's go take some more shots!!")
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
    VampireWolfView()
}
