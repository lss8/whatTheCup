//
//  BartenderView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct BartenderView: View {
    @StateObject var GameTopVM: GameViewTopModel
    
    init() {
        _GameTopVM = StateObject(wrappedValue: GameViewTopModel())
    }
    
    var body: some View {
        ZStack {
            Image.icon.background
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button {
                        
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
                ZStack {
                    Image.icon.logo // BARTENDER
                    VStack {
                        Spacer()
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width, height: 376)
                            .foregroundColor(.gray)
                    }
                    VStack(spacing: 32.0) {
                        Spacer()
                        NavigationLink(destination: CupView()) {
                            HStack {
                                VStack {
                                    GameTopVM.drinks[0].imagem
                                    Text("1")
                                    Text(GameTopVM.cup1)
                                }
                                VStack {
                                    GameTopVM.drinks[0].imagem
                                    Text("2")
                                    Text(GameTopVM.cup2)
                                }
                                VStack {
                                    GameTopVM.drinks[0].imagem
                                    Text("3")
                                    Text(GameTopVM.cup3)
                                }
                                VStack {
                                    GameTopVM.drinks[0].imagem
                                    Text("4")
                                    Text(GameTopVM.cup4)
                                }
                            }
                        }
                        VStack {
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 80, height: 32)
                                    Text("Bartender")
                                        .foregroundStyle(.yellow)
                                }
                                Spacer()
                            }
                            ZStack {
                                Rectangle()
                                    .frame(width: 360, height: 160)
                                Text("Seelct the cup to define who you think it belongs to. For each cup you guess right, you get a point. Only drink a cup if you're sure it's yours.")
                                    .foregroundStyle(.yellow)
                            }
                        }
                        .padding(.horizontal, 16.0)
                    }
                    .padding(.vertical, 32.0)
                }
            }
        }
    }
}

#Preview {
    BartenderView()
}
