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
                    VStack {
                        Spacer()
                        HStack {
                            CharacterData().vampire.image
                            CharacterData().werewolf.image
                        }
                    }
                    VStack{
                        VStack {
                            Spacer()
                            VStack(alignment: .leading, spacing: -5) {
                                HStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 80, height: 32)
                                        Text(CharacterData().vampire.costume)
                                            .font(.custom(.pixellari, size: 20.0))
                                            .foregroundStyle(.red)
                                    }
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(width: 300, height: 56)
                                    Text("I think I'm going to throw up… ")
                                        .font(.custom(.pixellari, size: 20.0))
                                        .foregroundStyle(.green)
                                }
                            }
                            
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 90, height: 32)
                                        Text(CharacterData().werewolf.costume)
                                            .font(.custom(.pixellari, size: 20.0))
                                            .foregroundStyle(.gray)
                                    }
                                }
                                ZStack {
                                    Rectangle()
                                        .frame(width: 300, height: 56)
                                    Text("Let's go take some more shots!!")
                                        .font(.custom(.pixellari, size: 20.0))
                                        .foregroundStyle(.green)
                                }
                            }
                        }
                    }
                    .padding(.trailing, 50.0)
                }
            }
            .padding(.vertical, 56.0)
        }
    }
}

#Preview {
    VampireWolfView()
}
