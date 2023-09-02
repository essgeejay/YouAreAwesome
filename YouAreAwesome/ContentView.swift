//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Shane Jeffrey on 29/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    @State private var messageString2 = "You Are Great!"
    
    @State private var someText = "nothing text"
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
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
            
            Button("Show Message") {
                
                let messageString01 = "You Are Awesome"
                let messageString02 = "You Are Great"
                
                // This is the action perfromed when the button is pressed
                if messageString == messageString01 {
                    messageString = messageString02
                } else {
                    messageString = messageString01
                }

            }
            .buttonStyle(.borderedProminent)
            
        }
    }
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
