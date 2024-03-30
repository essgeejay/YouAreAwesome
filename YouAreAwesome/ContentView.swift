//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Shane Jeffrey on 30/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .padding()
            Text("Your Are Awesome!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .italic()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
