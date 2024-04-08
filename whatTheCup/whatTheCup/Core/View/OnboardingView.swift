//
//  OnboardingView.swift
//  whatTheCup
//
//  Created by Lara Vieira Luchi on 06/04/24.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject var GameTopVM: GameViewTopModel
    @State var soundState = true
    @State var dialogueCounter = 0
    @State var changeView = false
    
    init() {
        _GameTopVM = StateObject(wrappedValue: GameViewTopModel())
    }
    
    var body: some View {
        
        ZStack{
            if dialogueCounter == 0 {
                Image.icon.bgFinalnoCup
                    .ignoresSafeArea()
            } else if dialogueCounter == 1 {
                Image.icon.bgFinal1Cup
                    .ignoresSafeArea()
            } else if dialogueCounter > 1 {
                Image.icon.bgFinal4Cup
                    .ignoresSafeArea()
            }
            
            NavigationLink(destination: GameViewTop(), isActive: $changeView) {EmptyView()}
            
            VStack(spacing: 420){
                HStack {
                    Spacer()
                    Button(action: {
//                        print("teste")
                        GameTopVM.soundState.toggle()
                        if GameTopVM.soundState{
                            playSoundtrack(sound: "clubSound")
                        } else {
                            stopSoundtrack(sound: "clubSound")
                        }
                    }, label: {
                        if GameTopVM.soundState{
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(.white)
                        } else {
                            Image(systemName: "speaker.slash.fill")
                                .foregroundColor(.white)
                        }
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 50)
                    .padding(.bottom, 80)
                }
//                .onAppear{
//                    playSoundtrack(sound: "clubSound")
//                }
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 0.0) {
                        ZStack {
                            Image.icon.dialogueBox
                                .resizable()
                                .frame(width: 120, height: 35)
                            Text("Bartender")
                                .font(.custom(.pixellari, size: 20.0))
                                .foregroundStyle(.purple)
                        }
                    }
                    ZStack {
                        Image.icon.dialogueBox
                            .resizable()
                            .frame(width: 357, height: 222)
                            ZStack {
                                    Text(GameTopVM.onboardingDialogue[dialogueCounter])
                                    .frame(width: 300, height: 300)
                                    .font(.custom(.pixellari, size: 20.0))
                                    .lineLimit(5)
                                    .foregroundStyle(.green)

                                HStack(alignment: .bottom){
                                    Spacer()
                                    Button {
                                        if dialogueCounter < 5 {
                                            dialogueCounter += 1
                                        } else {
                                            changeView = true
                                        }
                                    } label: {
                                        Image.icon.arrow
                                            .foregroundStyle(.black)
                                    }.offset(x: 30,y: 35)
                                }
                                
                            }.frame(width: 200, height: 100)
                    }
                }
            }.ignoresSafeArea()
        }
        .ignoresSafeArea()
    }
}



#Preview {
    OnboardingView()
}
