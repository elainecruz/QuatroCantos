//
//  InicioView.swift
//  Quatro Cantos
//
//  Created by Julia Machado on 09/02/21.
//

import SwiftUI

struct InicioView: View {
    @State var nextView = false
    
    var body: some View {
        VStack{
            ZStack {
                Image("papelPautadoInicio")
                    .resizable()
                    .scaledToFit()
                Text("Bem-vindo, folião!")
                    .font(.custom("Brasilero 2018 Free", size: 24))
            }
            Spacer()
            ZStack {
                Image("papelInicio")
                    .resizable()
                    .scaledToFit()
                Text("Pronto para descobrir o teu destino?")
                    .font(.custom("Brasilero 2018 Free", size: 36
                    ))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 55)
            }
            Spacer()
            ZStack {
                Image("bgVermelho")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                
                Button(action:{
                    print("lalala")
                    self.nextView.toggle()
                    
                })
                {Text("Simbora")
                    .font(.custom("Brasilero 2018 Free", size: 48))
                    .foregroundColor(Color.white)
                    .padding(.top, 55)
                    
                }
                .fullScreenCover(isPresented: $nextView, content: {
                    OnibusView()
                })
                
                    
            }
        }
        .background(
            Image("bgInicio")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

struct InicioView_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
            .previewDevice("iPhone 11")
    }
}
