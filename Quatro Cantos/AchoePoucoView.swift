//
//  AchoePoucoView.swift
//  Quatro Cantos
//
//  Created by Elaine  Cruz on 10/02/21.
//

import SwiftUI

struct AchoePoucoView: View {
    var body: some View {
        VStack{
            Image("OnibusAchoePouco")
                .resizable()
                .scaledToFit()
                .aspectRatio(1.7, contentMode: .fit)
            
            Spacer()
            
            HStack{
                
                Image("GlitterDourado")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(0.8, contentMode: .fit)
                    .offset(x: 0, y: 100)
                    //.padding(.top, 100)


                Image("Hb20")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(1, contentMode: .fit)


                Image("cervejanossa")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(0.4, contentMode: .fit)
                    .offset(x: 0, y: 100)


            }
            Image("pocheteAmarela")
                .resizable()
                .scaledToFit()
                .aspectRatio(0.9, contentMode: .fit)



            HStack{
                Image("Batom")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(0.6, contentMode: .fit)
                    .offset(x: 0, y: -100)



                Image("caipiroska")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(0.5, contentMode: .fit)


                Image("foiceEmartelo")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(0.6, contentMode: .fit)
                    .offset(x: 0, y: -100)



            }
            
            Spacer()
            
        }
        .background(
            Image("bgAchoePouco")
                .resizable()
                .ignoresSafeArea()
        )
    }
}

struct AchoePoucoView_Previews: PreviewProvider {
    static var previews: some View {
        AchoePoucoView()
            .previewDevice("iPhone 11")
    }
}
