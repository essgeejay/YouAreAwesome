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
            
            Image(systemName: "speaker.wave.3", variableValue: 0.68)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.523, saturation: 0.851, brightness: 0.948))
                .cornerRadius(30)
                .shadow(color: .gray, radius: 30, x: 20, y: 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 1)
                )
                .padding()
            
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
