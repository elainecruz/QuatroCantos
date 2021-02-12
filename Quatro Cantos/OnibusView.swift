//
//  OnibusView.swift
//  Quatro Cantos
//
//  Created by Julia Machado on 10/02/21.
//

import SwiftUI

struct OnibusView: View {
    @State var nextView = false
    @State var offset: CGFloat = -400
    @State var opacity: Double = 0
    
    
    var body: some View {
        VStack{
            ZStack{
                Image("papelInicio")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                    .frame(width: 400, height: 300, alignment: .leading)
                    .offset(x: -80, y: -50)
                Text("Teu ônibus chegou!")
                    .font(.custom("Brasilero 2018 Free", size: 48))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 65)
                    .offset(x: -60, y: -30)
                    
            }
            ZStack{
                Image("balao")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                    .aspectRatio(1, contentMode: .fit)
                    .offset(x: 100, y: 0)
                    .opacity(opacity)
                    .animation(
                        Animation.easeIn(duration: 0.5)
                            .delay(0.9)
                    )
                    
                Text("Vai desceê!!!")
                    .font(.custom("Brasilero 2018 Free", size: 18))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 50)
                    .offset(x: 100, y: -5)
                    .opacity(opacity)
                    .animation(
                        Animation.easeIn(duration: 0.5)
                            .delay(0.9)
                    )

            }
            VStack{
                Image("OnibusAchoePouco")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                    .offset(x: offset, y: -50)
                    .onAppear(perform: {
                        self.offset = 0
                        opacity = 1
                    })
                    .animation(
                        Animation.default.speed(0.5)
                            .delay(0.5)
                    )
                            
                
                Spacer()
                Text("SIMBORA")
                    .font(.custom("Brasilero 2018 Free", size: 48))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 45)
                    .offset(x: 0,y: -150)
            }
            .onTapGesture {
                self.nextView.toggle()
            }
            .background(Image("bgVerde")
                            .resizable()
                            .ignoresSafeArea()
            )
        }
        .fullScreenCover(isPresented: $nextView, content: {
            AchoePoucoView(banco: BankViewModel())
        })
        .ignoresSafeArea()
        .background(
            Image("bgOnibus")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
        )
    }
}

struct OnibusView_Previews: PreviewProvider {
    static var previews: some View {
        OnibusView()
            .previewDevice("iPhone 11")
    }
}
