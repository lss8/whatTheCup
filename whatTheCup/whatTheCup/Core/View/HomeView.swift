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
            Color(.lightGray)
                .ignoresSafeArea()
            VStack(spacing: 64.0) {
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
                                .foregroundColor(.black)
                        } else {
                            Image(systemName: "speaker.slash.fill")
                                .foregroundColor(.black)
                        }
                    }
                }
                Spacer()
                VStack(spacing: 32.0) {
                    Image.icon.logo
                    NavigationLink(destination: GameViewTop()) {
                        Image.icon.startButton
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
