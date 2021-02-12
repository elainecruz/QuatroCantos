//
//  ObjectView.swift
//  Quatro Cantos
//
//  Created by Elaine  Cruz on 11/02/21.
//

import SwiftUI

struct ObjectView: View {
    var image: String
    var aspectRatio: CGFloat
    var offset: [CGFloat]
    @State var dragAmount: CGSize
    var belong: Bool
    var value: [CGFloat]
    @ObservedObject var banco: BankViewModel
    @State var opacity = 1.0
    
    var imageView: some View {
        Image(image)
        .resizable()
        .opacity(opacity)
        .scaledToFit()
        .aspectRatio(aspectRatio, contentMode: .fit)
        .offset(dragAmount)
        
        
    }
       
    
    var body: some View {
        imageView
            .onTapGesture {
                print()
            }
            .gesture(
                DragGesture (minimumDistance: 0, coordinateSpace: .global)
                    .onChanged{ value in
                        self.dragAmount = CGSize(width: value.translation.width + offset[0], height: value.translation.height + offset[1])
                        
                    }
                    
                    
                    .onEnded (){value in
                        

                       print(value.location.x)
                        print(value.location.y)
                      print(value.translation.width)
                        print(value.translation.height)
                        print()
//
                        
                        if(value.location.x>=140 && value.location.x<=300 && value.location.y>=400 && value.location.y<=700 ){
                            //Chegou na pochete
                            print ("chegou na pochete")
                            if(belong){
                                //pertence a essa pochete
                                AchoePoucoView.counter += 1
                                opacity = 0.0
                                if(AchoePoucoView.counter==4){
                                    self.banco.acertou = true
                                    self.banco.errou = false
                                    self.banco.nextView = true
                                   
                                }
                                print("uhuu")
                            }else{
                                print("errou")
                                //Carregar view de errou
                                self.banco.acertou = false
                                self.banco.errou = true
                                self.banco.nextView = true

                                //print(errou)
                               

                            }
                            
                        }else{
                            self.dragAmount = CGSize(width: offset[0], height: offset[1])
                        }
                       
                        self.dragAmount = CGSize(width: offset[0], height: offset[1])
                    }
            )
    }
}

//struct ObjectView_Previews: PreviewProvider {
//    static var previews: some View {
//        ObjectView(image: "GlitterDourado", aspectRatio: 0.8, offset: [0,100], dragAmount: CGSize(width: 0, height: 100), belong: true, value: [90, 100])
//    }
//}
