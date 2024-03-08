//
//  CardView.swift
//  LearnByDoing
//
//  Created by Maya Ghamloush on 08/03/2024.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    var gradient: [Color] = [.color01, .color02]
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image(.developerNo1)
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Better apps. Less code")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            .offset(y:-218)
            
            
          
                Button(action: {
                    print("Button was pressed")
                }, label: {
                    HStack {
                        Text("Learn".uppercased())
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
                    .background(LinearGradient(gradient:Gradient(colors: gradient), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .clipShape(Capsule())
                    .shadow(color: .colorShadow, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 3)
                })
      
            .offset(y:218)
        }//ZSTACK
        .frame(width: 335, height: 545, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}
//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    CardView()
}
