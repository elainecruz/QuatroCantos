//
//  AcertouView.swift
//  Quatro Cantos
//
//  Created by Marina Savluchinske on 11/02/21.
//

import SwiftUI

struct AcertouView: View {
    @State var close = false
    var body: some View {
        VStack {
            Button(action: {self.close.toggle()}, label: {
                Image("fecharVerde")
                    .resizable()
                    .scaledToFit()
                    //.aspectRatio(2, contentMode: .fit)
                    .padding(.leading, 240)
                    .padding(.bottom, 80)
                    .padding(.top, 50)
            })
            HStack {
                Image("stickerVerde1")
                    .resizable()
                    .scaledToFit()
                    //.offset(x: 0, y: 120)
                Image("morgana1")
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: -40)
            }
            .zIndex(1.0)
            ZStack {
                Image("papelInicio")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(1.3, contentMode: .fill)
                    .offset(x: 0, y: -150)
                Text("Você acertou! Morgana dançou frevo pra tu!")
                    .font(.custom("Brasilero 2018 Free", size: 30
                    ))
                    .offset(x: 0, y: -150)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 90)
            }
            HStack{
                Image("morgana3")
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: -250)
                Image("stickerVerde2")
                .resizable()
                .scaledToFit()
                .offset(x: 0, y: -270)
                    .aspectRatio(1.6, contentMode: .fit)
            Image("morgana2")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .offset(x: 0, y: -290)
                
            }
            
        }
        .ignoresSafeArea()
        .background(
            Image("bgLaranja")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea())
        .fullScreenCover(isPresented: $close, content: {
            InicioView()
        })
    }
    }

struct AcertouView_Previews: PreviewProvider {
    static var previews: some View {
        AcertouView()
    }
}
