//
//  AcertouView.swift
//  Quatro Cantos
//
//  Created by Marina Savluchinske on 11/02/21.
//

import SwiftUI

struct AcertouView: View {
    var body: some View {
        VStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("fecharVerde")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(80, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .offset(x: 140, y: 90)
            })
            HStack {
                Image("stickerVerde1")
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: 120)
                Image("morgana1")
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
                Text("Você acertou! Morgana dançou frevo pra tu!")
                    .font(.custom("Brasilero 2018 Free", size: 30
                    ))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 90)
            }
            HStack{
                Image("morgana3")
                    .resizable()
                    .scaledToFit()
                Image("stickerVerde2")
                .resizable()
                .scaledToFit()
                .offset(x: 60, y: -130)
                .aspectRatio(1.6, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            Image("morgana2")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .offset(x: -105, y: -135)}
            
        }
        .ignoresSafeArea()
        .background(
            Image("bgLaranja")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea())
    }
    }

struct AcertouView_Previews: PreviewProvider {
    static var previews: some View {
        AcertouView()
    }
}
