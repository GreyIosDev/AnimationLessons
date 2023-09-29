//
//  AnimationStack.swift
//  Animations
//
//  Created by Grey  on 29.09.2023.
//

import SwiftUI
// Basically what we are learning here is the arrangement of the animatiosn and to note that you can use multiple animations
struct AnimationStack: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(.default, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        
    }
}

struct AnimationStack_Previews: PreviewProvider {
    static var previews: some View {
        AnimationStack()
    }
}
