//
//  HomerView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct HomerView: View {
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
                        CharacterData().homer.image
                    }
                    VStack {
                        Spacer()
                        HStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 72, height: 32)
                                Text(CharacterData().homer.costume)
                                    .foregroundStyle(.yellow)
                            }
                            Spacer()
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 56)
                            Text("They keep complimenting my bald head thinking its part of the costume… I'm just calvo.")
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
    HomerView()
}
