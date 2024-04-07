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
                                .foregroundColor(.white)
                        } else {
                            Image(systemName: "speaker.slash.fill")
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding(.horizontal, 32.0)
                ZStack {
                    VStack {
                        CharacterData().homer.image
                    }
                    .padding(.bottom, 40.0)    //posicao homer
                    VStack(alignment: .leading, spacing: -10){
                        Spacer()
                        HStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 35)
                                Text(CharacterData().homer.costume)
                                    .padding()
                                    .foregroundStyle(.yellow)
                            }
                            Spacer()
                        }
                            ZStack {
                            Rectangle()
                                .frame(width: 350, height: 200)
                            Text("They keep complimenting my bald head thinking its part of the costume… I'm just calvo.")
                                .foregroundStyle(.green)
                        }
                    }
                }
                .padding(30.0)
            }
        }
    }
}

#Preview {
    HomerView()
}

//ZStack {
//    Image.icon.dialogueBox
//        .resizable()
//        .frame(width: 357, height: 222)
//        ZStack {
//                Text(GameTopVM.onboardingDialogue[dialogueCounter])
//                .frame(width: 300, height: 300)
//                .font(.system(size: 20))
//                .lineLimit(5)
//                .foregroundStyle(.green)
