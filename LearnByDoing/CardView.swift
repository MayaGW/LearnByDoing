//
//  CardView.swift
//  LearnByDoing
//
//  Created by Maya Ghamloush on 08/03/2024.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
 
    var card: Card
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
            
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
            .offset(y:-218)
            
            
          
                Button(action: {
                    print("Button was pressed")
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
      
            .offset(y:218)
        }//ZSTACK
        .frame(width: 335, height: 545, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}
//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    CardView(card: cardData[4])
}
