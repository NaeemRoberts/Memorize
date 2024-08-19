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
            CardView(isFaceUp: false)
            CardView()
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .padding() // View Modifier, function that will take the view and returns a new view
        
        .foregroundColor(.blue)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("🙂‍↔️").font(.largeTitle)
            } else {
                base.fill()
            }
        }
            .onTapGesture {
                isFaceUp.toggle()
            }
        }
}













#Preview {
    ContentView()
}
