//
//  ExplictAnimation.swift
//  Animations
//
//  Created by Grey  on 28.09.2023.
//

import SwiftUI

struct ExplictAnimation: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animationAmount += 360
            } // The use of the withAnimation is an example of the occurance of the Explicit animations
                }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

struct ExplictAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExplictAnimation()
    }
}
