//
//  HomeView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct HomeView: View {
    @State var soundState = true
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .ignoresSafeArea()
            VStack(spacing: 64.0) {
                HStack {
                    Spacer()
                    Button {
                        soundState.toggle()
                    } label: {
                        if soundState {
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
    }
}

#Preview {
    HomeView()
}
