//
//  ErrouView.swift
//  Quatro Cantos
//
//  Created by Elaine  Cruz on 11/02/21.
//

import SwiftUI

struct ErrouView: View {
    var body: some View {
        VStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("fecharLaranja")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(4, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .offset(x: 140, y: 90)
            })
            HStack {
                Image("lama1")
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: 120)
                Image("lama2")
                    .resizable()
                    .scaledToFit()
                    .offset(x: 10, y: 120)
            }
            .zIndex(1.0)
            ZStack {
                Image("papelInicio")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(1.3, contentMode: .fill)
                    .offset(x: 0, y: -10)
                Text("Você errou, alguém do bloco da lama passou e te abraçou")
                    .font(.custom("Brasilero 2018 Free", size: 30
                    ))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 70)
            }
            Image("lama3")
                .resizable()
                .scaledToFit()
                .offset(x: 60, y: -130)
                .aspectRatio(1.6, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            Image("lama4")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .offset(x: -105, y: -135)
        }
        .ignoresSafeArea()
        .background(
            Image("bgLaranja")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea())
    }
}

struct ErrouView_Previews: PreviewProvider {
    static var previews: some View {
        ErrouView()
            .previewDevice("iPhone 11")
    }
}
