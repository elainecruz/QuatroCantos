//
//  OnibusView.swift
//  Quatro Cantos
//
//  Created by Julia Machado on 10/02/21.
//

import SwiftUI

struct OnibusView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("papelInicio")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                Text("Teu ônibus chegou!")
                    .font(.custom("Brasilero 2018 Free", size: 48))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 65)
            }
            ZStack{
                Image("balao")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                Text("Vai desceê!!!")
                    .font(.custom("Brasilero 2018 Free", size: 18))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 50)
            }
                VStack{
                    Image("onibusBonfim")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFit()
                    Spacer()
                    Text("SIMBORA")
                        .font(.custom("Brasilero 2018 Free", size: 48))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.horizontal, 50)
                }
                .background(Image("bgVerde")
                                .resizable()
                                .ignoresSafeArea()
                                .scaledToFit())
        }
    }
}

struct OnibusView_Previews: PreviewProvider {
    static var previews: some View {
        OnibusView()
            .previewDevice("iPhone 11")
    }
}
