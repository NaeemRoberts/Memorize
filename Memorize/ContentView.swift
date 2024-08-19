//
//  ContentView.swift
//  Memorize
//
//  Created by Naeem Roberts on 8/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding() // View Modifier, function that will take the view and returns a new view
        
        .foregroundColor(.blue)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius:12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius:12)
                    .strokeBorder(lineWidth: 3)
                Text("🙂‍↔️").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius:12)
                    
            }
        }}
}













#Preview {
    ContentView()
}
