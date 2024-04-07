//
//  TinkerMageView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct TinkerMageView: View {
    @StateObject var GameTopVM: GameViewTopModel
    
    init() {
        _GameTopVM = StateObject(wrappedValue: GameViewTopModel())
    }
    
    var body: some View {
        ZStack {
            Image("backg")
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
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
                        CharacterData().mage.image
                        CharacterData().tinker.image
                    }
                    VStack {
                        Spacer()
                        HStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 72, height: 32)
                                Text(CharacterData().mage.costume)
                                    .foregroundStyle(.yellow)
                            }
                            Spacer()
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 56)
                            Text("I almost didn't come. I like to spend my weekends at home reading a book, but my girlfriend, Fairy, made me come…")
                                .foregroundStyle(.yellow)
                        }
                        HStack {
                            Spacer()
                            ZStack {
                                Rectangle()
                                    .frame(width: 72, height: 32)
                                Text(CharacterData().tinker.costume)
                                    .foregroundStyle(.yellow)
                            }
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 56)
                            Text("It's Friday night, my love! Time to drink and have fun with me!")
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
    TinkerMageView()
}
