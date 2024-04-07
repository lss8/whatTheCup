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
        
        ZStack{
            Color(.gray)
            
            VStack(spacing: 550){
                //                Spacer()
                HStack{
                    
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
                    
                    
                }.padding(.trailing)
                
                //                Spacer()
                
                VStack(spacing: 0) {
                    HStack(spacing: 0.0) {
                        ZStack {
                            Rectangle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("Eu")
                            
                        }
                    }
                    .padding(.leading, -150.0)
                    
                
                    ZStack {
                        Rectangle()
                            .frame(width: 300, height: 100)
                            .foregroundColor(.blue) //texto
                        VStack(spacing: 20){
                            Text("Lorem ipsum dolor etc")
                            HStack{
                                
                                Button {
                                    //passar diálogo -> View Model
                                } label: {
                                    Image(systemName: "arrow.left")
//                                        .padding(.trailing, 170.0)

                                        .foregroundStyle(.black)
                                }
                                Spacer()
                                Button {
                                    //passar diálogo -> View Model
                                } label: {
                                    Image(systemName: "arrow.right")
//                                        .padding(.trailing, 90.0)

                                        .foregroundStyle(.black)
                                }
                            }
                        }.frame(width: 200, height: 100)
                    }
                }
                //                Spacer()
                
                
                
            }.ignoresSafeArea()
        }.ignoresSafeArea()
        //        VStack {
        //
        //
        //            Spacer()
        //            ZStack {
        //                VStack(spacing: 0.0) {
        //                    Image(systemName: "globe")  //princesa
        //                }
        //                VStack {
        //                    Rectangle()
        //                        .frame(width: 80, height: 80)
        //                }
        //                .padding(.top, 200.0)
        //
        //                VStack {
        //                    Image(systemName: "pencil.tip") //copo
        //                    VStack{
        //                        HStack {
        //                            ZStack {
        //                                Rectangle() //"eu"
        //                                    .frame(width: 30, height: 30)
        //                                    .foregroundColor(.red)
        //                                Text("Eu")
        //                            }
        //                            Spacer()
        //                        }
        //
        //
        //                    }
        //                }
        //
        //            }
        //            Spacer()
    }
}

#Preview {
    OnboardingView()
}
