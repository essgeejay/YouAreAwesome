//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Shane Jeffrey on 29/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    
    @State private var someText = "nothing text"
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: "cloud.sun.rain.fill")
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.palette)
                .foregroundStyle(.gray, .orange, .blue)
//                .foregroundColor(.orange)
                .padding()
            
//            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            HStack {
                // First Button
                Button("Awesome") {
                    // This is the action perfromed when the button is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                // Second Button
                Button("Great") {
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
