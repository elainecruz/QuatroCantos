//
//  AchoePoucoView.swift
//  Quatro Cantos
//
//  Created by Elaine  Cruz on 10/02/21.
//

import SwiftUI

struct AchoePoucoView: View {
    
    @State var opacity = 1.0
    public static var counter = 0
    @ObservedObject var banco: BankViewModel

    
    var body: some View {
        ZStack{
            VStack{
                Image("OnibusAchoePouco")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(1.7, contentMode: .fit)
                
                Spacer()
                
                HStack{
                  
                    ObjectView(image: "GlitterDourado", aspectRatio: 0.8, offset: [0,100], dragAmount: CGSize(width: 0, height: 100), belong: true, value: [1,1], banco: banco)

                    ObjectView(image: "Hb20", aspectRatio: 1, offset: [0,0], dragAmount: CGSize.zero, belong: false, value: [1,1], banco: banco)


                    ObjectView(image: "cervejanossa", aspectRatio: 0.4, offset: [0,100], dragAmount:CGSize(width: 0, height: 100), belong: true, value: [1,1], banco: banco)
                }
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 200)
                
                Image("pocheteAmarela")
                    .resizable()
                    .zIndex(0)
                    .scaledToFit()
                    .aspectRatio(0.9, contentMode: .fit)
                    .offset(x:0, y:0)
                    
                

                HStack{
                    ObjectView(image: "Batom", aspectRatio: 0.6, offset: [0,-100], dragAmount: CGSize(width: 0, height: -100), belong: true, value: [1,1], banco: banco)
        
                    ObjectView(image: "caipiroska", aspectRatio: 0.5, offset: [0,0], dragAmount: CGSize.zero, belong: false, value: [1,1], banco: banco)
        
                    ObjectView(image: "foiceEmartelo", aspectRatio: 0.6, offset: [0,-100], dragAmount:CGSize(width: 0, height: -100), belong: true, value: [1,1], banco: banco)

                }
                
                Spacer()
                
             
            }
            .background(
                Image("bgAchoePouco")
                    .resizable()
                    .ignoresSafeArea()
            )
            
            Image("papelInicio")
                .opacity(opacity)
            
            VStack{
                
                
                Button(action: {
                    print("opa")
                    self.opacity = 0
                }, label: {
                    Image("fecharLaranja")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(2.8, contentMode: .fit)
                        .offset(x: 130, y: -80)
                    
                })
//                .scaledToFit()
//                .aspectRatio(2, contentMode: .fit)
//                .padding(.leading, 100)
                
                        
                Text("Arraste para dentro da pochete os objetos que esse passageiro está levando para esse destino")
                    .padding(.horizontal, 350)
                    .font(.custom("Brasilero 2018 Free", size: 35))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .offset(x: 0, y: -150)
            }
            .opacity(opacity)
            
                   
        }
        .fullScreenCover(isPresented: $banco.nextView, content: {
            if(banco.errou){
                ErrouView()
                    .onAppear{
                        print("Entro na errou")
                    }

            }else if(banco.acertou){
                AcertouView()
                    .onAppear{
                        print("Entro na acertou")
                        

                    }
            }
        })
    }
}

//struct AchoePoucoView_Previews: PreviewProvider {
//    static var previews: some View {
//        AchoePoucoView()
//            .previewDevice("iPhone 11")
//    }
//}
