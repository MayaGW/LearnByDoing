//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Maya Ghamloush on 07/03/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var card: [Card] = cardData
    
    //MARK: - Content
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment:.center,spacing: 20) {
                ForEach(cardData) { item in
                   // CardView()
                    CardView(card: item)
                }
                .padding(20)
            }//HSTACK
        }//SCROLL
    }
}
//MARK: - PREVIEW
#Preview {
    ContentView(card: cardData)
}
