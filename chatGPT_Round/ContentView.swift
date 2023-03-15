//
//  ContentView.swift
//  chatGPT_Round
//
//  Created by Elias Breitenbach on 07.03.23.
//

import SwiftUI

struct CounterView: View {
    @State var rounds = 0
    @State var showingAlert = false
    
    var body: some View {
        VStack {
            Text("Rounds: \(rounds)")
                .font(.title)
            
            Button(action: {
                self.rounds += 1
                if self.rounds >= 8 {
                    self.showingAlert = true
                    self.rounds = 0 // Reset the counter
                }
            }) {
                Text("Next Round")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Congratulations!"), message: Text("You completed 8 rounds!"), dismissButton: .default(Text("OK")))
        }
    }
}

struct ContentView: View {
    var body: some View {
        CounterView()
    }
}



