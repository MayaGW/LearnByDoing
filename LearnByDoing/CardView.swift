//
//  CardView.swift
//  LearnByDoing
//
//  Created by Maya Ghamloush on 08/03/2024.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    @State private var fadeIn: Bool = false
    @State private var moveDownard: Bool = false
    @State private var moveUpward: Bool = false
    
    var card: Card
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            .offset(y: moveDownard ? -218 : -300)
            
            
          
                Button(action: {
                   
                    playSound(sound: "sound-chime", type: "mp3")
                }, label: {
                    HStack {
                        Text(card.callToAction.uppercased())
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                        
                        .accentColor(Color.white)
                        
                        Image(systemName: "arrow.right.circle")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .accentColor(.white)
                    }//Hstack
                    .padding(.vertical)
                    .padding(.horizontal,24)
                    .background(LinearGradient(gradient:Gradient(colors: card.gradientColors), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .clipShape(Capsule())
                    .shadow(color: .colorShadow, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 3)
                })
      
                .offset(y: moveUpward ? 210 : 300)
        }//ZSTACK
        .frame(width: 335, height: 545, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear(){
            withAnimation(.linear(duration: 1.2)){
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)){
                self.moveDownard.toggle()
                self.moveUpward.toggle()
            }
            
        }
    }
}
//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    CardView(card: cardData[4])
}
