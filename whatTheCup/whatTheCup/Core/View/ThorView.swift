//
//  ThorView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct ThorView: View {
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
                    CharacterData().thor.image
                    VStack {
                        Spacer()
                        HStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 72, height: 32)
                                Text(CharacterData().thor.costume)
                                    .foregroundStyle(.yellow)
                            }
                            Spacer()
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 56)
                            Text("The Homer Simpson guy over there really committed to the costume. I have no idea how he hides his hair like that.")
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
    ThorView()
}
