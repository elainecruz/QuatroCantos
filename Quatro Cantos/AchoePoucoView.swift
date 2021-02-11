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
              
                ObjectView(image: "GlitterDourado", aspectRatio: 0.8, offset: [0,100], dragAmount: CGSize(width: 0, height: 100), belong: true, value: [1,1])

                ObjectView(image: "Hb20", aspectRatio: 1, offset: [0,0], dragAmount: CGSize.zero, belong: false, value: [1,1])


                ObjectView(image: "cervejanossa", aspectRatio: 0.4, offset: [0,100], dragAmount:CGSize(width: 0, height: 100), belong: true, value: [1,1])
            }
            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
            Image("pocheteAmarela")
                .resizable()
                .zIndex(0)
                .scaledToFit()
                .aspectRatio(0.9, contentMode: .fit)
                .offset(x:0, y:0)
                
            

            HStack{
                ObjectView(image: "Batom", aspectRatio: 0.6, offset: [0,-100], dragAmount: CGSize(width: 0, height: -100), belong: true, value: [1,1])
    
                ObjectView(image: "caipiroska", aspectRatio: 0.5, offset: [0,0], dragAmount: CGSize.zero, belong: false, value: [1,1])
    
                ObjectView(image: "foiceEmartelo", aspectRatio: 0.6, offset: [0,-100], dragAmount:CGSize(width: 0, height: -100), belong: true, value: [1,1])

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
