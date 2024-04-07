//
//  CupView.swift
//  whatTheCup
//
//  Created by Lucas Souza on 06/04/24.
//

import SwiftUI

struct CupView: View {
    @StateObject var GameTopVM: GameViewTopModel
    @State var selection1: String? = nil
    
    init() {
        _GameTopVM = StateObject(wrappedValue: GameViewTopModel())
    }
    
    var body: some View {
        ZStack {
            Image("HalfBG")
                .ignoresSafeArea()
            
            VStack(spacing: 36.0) {
                HStack {
                    Spacer()
                    Button {
                        GameTopVM.soundState.toggle()
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
                VStack {
                    HStack {
                        Text("Suspeitos")
                            .foregroundStyle(.gray)
                        Spacer()
                    }
                    DropDownPicker(
                        selection: $selection1,
                        options: [
                            CharacterData().homer.costume,
                            CharacterData().thor.costume,
                            CharacterData().tinker.costume,
                            CharacterData().mage.costume,
                            CharacterData().vampire.costume,
                            CharacterData().werewolf.costume,
                            CharacterData().zombie.costume,
                            CharacterData().goblin.costume,
                            CharacterData().alien.costume,
                        ]
                    )
                }
                VStack {
                    Image("Cup")
                        .resizable()
                        .frame(width: 256, height: 320)
                    HStack {
                        Image(systemName: "arrow.left")
                        Text("Number")
                        Image(systemName: "arrow.right")
                    }
                }
                VStack {
                    Text("Se acha que esse é o seu copo...")
                    Image("DrinkButton")
                }
            }
        }
    }
}

#Preview {
    CupView()
}
