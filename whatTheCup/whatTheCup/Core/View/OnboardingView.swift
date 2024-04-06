//
//  OnboardingView.swift
//  whatTheCup
//
//  Created by Lara Vieira Luchi on 06/04/24.
//

import SwiftUI

struct OnboardingView: View {
    @State var soundState = true
    var body: some View {
        VStack {
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
            ZStack {
                VStack(spacing: 0.0) {
                    Image(systemName: "globe")  //princesa
                }
                VStack {
                    Rectangle()
                        .frame(width: 80, height: 80)
                }
                .padding(.top, 200.0)
                
                VStack {
                    Image(systemName: "pencil.tip") //copo
                    VStack{
                        HStack {
                            ZStack {
                                Rectangle() //"eu"
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.red)
                                Text("Eu")
                            }
                            Spacer()
                        }
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) //texto
                            VStack {
                                Text("oi")
                                HStack{
                                    Spacer()
                                    Button {
                                        //passar diálogo -> View Model
                                    } label: {
                                        Image(systemName: "arrow.right")
                                    }
                                }
                            }
                        }
                    }
                }
                
            }
        }
    }
}

#Preview {
    OnboardingView()
}
