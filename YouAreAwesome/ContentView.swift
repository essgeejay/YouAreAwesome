//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Shane Jeffrey on 29/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the genius bar needs help, they call you!"
    
    var body: some View {
        
        GeometryReader {geometry in
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
                //                .border(.orange, width: 1)
                    .padding()
                
                Spacer()
                
                Divider()
                    .background(.purple)
                    .padding()
                    .frame(width: 150.0)
                
                Rectangle()
                    .fill(.indigo)
                    .frame(width: geometry.size.width * (2/3), height: 1)
    //                .cornerRadius(25)
    //                .padding()
                
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
                //            .border(.purple, width: 5)
                
                .padding()
                //            .background(.purple)
                //            .tint(Color("Vermillion"))
            }
        }
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
