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
            HStack{
                
                Image("GlitterDourado")
                    .resizable()
                    .scaledToFit()


                Image("Hb20")
                    .resizable()
                    .scaledToFit()


                Image("cervejanossa")
                    .resizable()
                    .scaledToFit()


            }
            Image("pocheteAmarela")
                .resizable()
                .scaledToFit()


            HStack{
                Image("Batom")
                    .resizable()
                    .scaledToFit()


                Image("caipiroska")
                    .resizable()
                    .scaledToFit()


                Image("foiceEmartelo")
                    .resizable()
                    .scaledToFit()


            }
            
        }
    }
}

struct AchoePoucoView_Previews: PreviewProvider {
    static var previews: some View {
        AchoePoucoView()
            .previewDevice("iPhone 11")
    }
}
