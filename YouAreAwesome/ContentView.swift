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
                .padding(.trailing, 30.0)
                .padding(.all, 14.0)
                .background(.blue)
            
            Text("Your Are Awesome!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .italic()
                .background(.yellow)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
