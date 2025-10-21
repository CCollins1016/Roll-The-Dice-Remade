//
//  ContentView.swift
//  Roll The Dice Remade
//
//  Created by Christian Collins on 10/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.largeTitle)
            Image("pips \(randomValue)")
                .resizable()
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(rotation))
                .rotation3DEffect(.degrees(rotation), axis: (x: 1, y:1, z:0))
                .font(.largeTitle)
                .padding()
                .onTapGesture {
                    chooseRandom(times: 3)
                    withAnimation(.interpolatingSpring(Spring(stiffness: 10, damping: 2))) {
                        rotation += 360
                    }
                }
        }
        Spacer()
    }
    func chooseRandom(times:Int) {
        if times > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                randomValue = Int.random(in: 1...6)
                chooseRandom (times: times - 1)
            }
        }
    }
}

#Preview {
    ContentView()
}
