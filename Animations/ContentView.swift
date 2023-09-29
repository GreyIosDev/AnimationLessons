//
//  ContentView.swift
//  Animations
//
//  Created by Grey  on 23.09.2023.
//

import SwiftUI
// Implicit Animations
struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me"){
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)//  This an Example of the Implicit animation were it takes effect on all the properties of the view that changes.
        
        // Basically by adding the Implicit animation we refer to the fact we tell the view how it should respond when someone wants to animate them. So in summary when we add the ".animation we tell it to repond in an animated
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
