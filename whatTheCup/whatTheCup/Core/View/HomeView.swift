//
//  HomeView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var GameTopVM: GameViewTopModel
    
    init() {
        _GameTopVM = StateObject(wrappedValue: GameViewTopModel())
    }
    
    var body: some View {
        ZStack {
            Image.icon.startBg
                .ignoresSafeArea()
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    Button {
                        GameTopVM.soundState.toggle()
                        if GameTopVM.soundState {
                            playSoundtrack(sound: "openMusic")
                        } else {
                            stopSoundtrack(sound: "openMusic")
                        }
                    } label: {
                        if GameTopVM.soundState {
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(.white)
                        } else {
                            Image(systemName: "speaker.slash.fill")
                                .foregroundColor(.white)
                        }
                    }.padding(.trailing, 20)
                        .padding(.top, 40)
                        .padding(.bottom, 80)
                }
                VStack(spacing: 0) {
                    Image.icon.whatDCup
                    NavigationLink(destination: OnboardingView()) {
                        Image.icon.startButton1
                    }
                    
                }
                Spacer()
                Spacer()
            }
            .padding(32.0)
        }
        .onAppear{
            playSoundtrack(sound: "openMusic")
        }
        .onDisappear{
            stopSoundtrack(sound: "openMusic")
            if !GameTopVM.soundState {
                GameTopVM.soundState.toggle()
            }
            
        }
    }
}

#Preview {
    HomeView()
}
