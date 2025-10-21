//
//  ContentView.swift
//  Roll The Dice Remade
//
//  Created by Christian Collins on 10/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.largeTitle)
                Text("\(randomValue)")
                .font(.largeTitle)
                .padding()
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
                    
                }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
