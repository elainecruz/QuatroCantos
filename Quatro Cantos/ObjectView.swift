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
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .aspectRatio(aspectRatio, contentMode: .fit)
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged{ value in
                        self.dragAmount = CGSize(width: value.translation.width + offset[0], height: value.translation.height + offset[1])
                    }
                    
                    .onEnded{value in
                        
                        print(value.location.x)
                        print(value.location.y)
            
                        
                        if(self.dragAmount.width >= 100  && self.dragAmount.height >= 100 ){
                            //Chegou na pochete
                            
                            if(belong){
                                //pertence a essa pochete
                            }else{
                                //Carregar viu de errou
                            }
                            
                        }else{
                            self.dragAmount = CGSize(width: offset[0], height: offset[1])
                        }
                       
                        self.dragAmount = CGSize(width: offset[0], height: offset[1])
                    }
            )
    }
}

struct ObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectView(image: "GlitterDourado", aspectRatio: 0.8, offset: [0,100], dragAmount: CGSize(width: 0, height: 100), belong: true, value: [90, 100])
    }
}
