//
//  GameOverView.swift
//  whatTheCup
//
//  Created by Miriam Rayane Mendes da Silva on 06/04/24.
//

import SwiftUI

struct GameOverView: View {
    var body: some View {
        ZStack{
            Color(.gray)
                .ignoresSafeArea()
            VStack(spacing: 40.0){
                VStack(spacing: 16){
                    VStack {
                        Text("YOU WIN!")
                            .font(.largeTitle)
                            .fontWeight(.regular)
                    }
                    HStack{
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                    }
                }
                
                Image("wonner")
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                       label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 48)
                            .frame(width: 192,height: 53)
                            .foregroundColor(.red)
                        Text("Play Again!")
                            .foregroundColor(.white)
                    }
                })
            }
        }
    }
}

#Preview {
    GameOverView()
}
