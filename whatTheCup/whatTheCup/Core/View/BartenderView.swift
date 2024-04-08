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
            Image.icon.bgFinalnoCup
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
                VStack(spacing: 32.0) {
                    Spacer()
                    Spacer()
                    NavigationLink(destination: CupView()) {
                        HStack {
                            VStack {
                                GameTopVM.drinks[0].imagem
                                    .resizable()
                                    .frame(width: 72, height: 96)
                                Text("1")
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.black)
                                Text(GameTopVM.cup1)
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.black)
                            }
                            VStack {
                                GameTopVM.drinks[1].imagem
                                    .resizable()
                                    .frame(width: 72, height: 96)
                                Text("2")
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.black)
                                Text(GameTopVM.cup2)
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.black)
                            }
                            VStack {
                                GameTopVM.drinks[2].imagem
                                    .resizable()
                                    .frame(width: 72, height: 96)
                                Text("3")
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.black)
                                Text(GameTopVM.cup3)
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.black)
                            }
                            VStack {
                                GameTopVM.drinks[3].imagem
                                    .resizable()
                                    .frame(width: 72, height: 96)
                                Text("4")
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.black)
                                Text(GameTopVM.cup4)
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 100, height: 32)
                                Text("Bartender")
                                    .font(.custom(.pixellari, size: 20.0))
                                    .foregroundStyle(.purple)
                            }
                            Spacer()
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 160)
                            Text("Seelct the cup to define who you think it belongs to. For each cup you guess right, you get a point. Only drink a cup if you're sure it's yours.")
                                .font(.custom(.pixellari, size: 20.0))
                                .foregroundStyle(.green)
                                .frame(width: 330, height: 150)
                        }
                    }
                    .padding(.horizontal, 16.0)
                }
                .padding(.vertical, 32.0)
            }
        }
    }
}

#Preview {
    BartenderView()
}
