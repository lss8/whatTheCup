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
            Image.icon.background3
                .ignoresSafeArea()
            
            NavigationLink(destination: GameViewTop(), isActive: $changeView) {EmptyView()}
            
            VStack(spacing: 420){
                HStack {
                    Spacer()
                    Button {
                        GameTopVM.soundState.toggle()
//                        if GameTopVM.soundState {
//                            playSoundtrack(sound: "clubSound")
//                        } else {
//                            stopSoundtrack(sound: "clubSound")
//                        }
                    } label: {
                        if GameTopVM.soundState{
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(.white)
                        } else {
                            Image(systemName: "speaker.slash.fill")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 40)
                    .padding(.bottom, 80)
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 0.0) {
                        ZStack {
                            Image.icon.dialogueBox
                                .resizable()
                                .frame(width: 120, height: 35)
                            Text("Bartender")
                                .foregroundStyle(.purple)
                        }
                    }
                    
                    
                    ZStack {
                        Image.icon.dialogueBox
                            .resizable()
                            .frame(width: 357, height: 222)
                        //era 20
                        ZStack {
                            //                                HStack{
                            Text(GameTopVM.onboardingDialogue[dialogueCounter])
                                .frame(width: 300, height: 300)
                                .font(.system(size: 20))
                                .lineLimit(5)
                                .foregroundStyle(.green)
                            //
                            //                                }
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
        .onAppear{
            //            playSoundtrack(sound: "clubSound")
        }
        
    }
}



#Preview {
    OnboardingView()
}
