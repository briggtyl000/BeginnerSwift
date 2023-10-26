//
//  ContentView.swift
//  Memorize
//
//  Created by Tyler Briggs on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
        }
        .foregroundColor(.green)
        .padding()

    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else{
                RoundedRectangle(cornerRadius: 12)
            }

        })
    }
}












#Preview {
    ContentView()
}
