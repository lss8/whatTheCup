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
                                    .foregroundStyle(.black)
                                Text(GameTopVM.cup1)
                                    .foregroundStyle(.black)
                            }
                        }
                        VStack(alignment: .leading, spacing: -10) {
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 100, height: 32)
                                    Text("Bartender")
                                        .foregroundStyle(.purple)
                                }
                                Spacer()
                            VStack {
                                GameTopVM.drinks[1].imagem
                                    .resizable()
                                    .frame(width: 72, height: 96)
                                Text("2")
                                    .foregroundStyle(.black)
                                Text(GameTopVM.cup2)
                                    .foregroundStyle(.black)
                            }
                            VStack {
                                GameTopVM.drinks[2].imagem
                                    .resizable()
                                    .frame(width: 72, height: 96)
                                Text("3")
                                    .foregroundStyle(.black)
                                Text(GameTopVM.cup3)
                                    .foregroundStyle(.black)
                            }
                            VStack {
                                GameTopVM.drinks[3].imagem
                                    .resizable()
                                    .frame(width: 72, height: 96)
                                Text("4")
                                    .foregroundStyle(.black)
                                Text(GameTopVM.cup4)
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                    Spacer()
                    VStack {
                        HStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 360, height: 160)
                                Text("Select the cup to define who you think it belongs to. For each cup you guess right, you get a point. Only drink a cup if you're sure it's yours.")
                                    .foregroundStyle(.green)
                                    .frame(width: 330, height: 150)
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

#Preview {
    BartenderView()
}
