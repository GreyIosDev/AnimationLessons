//
//  CustomizedAnimations.swift
//  Animations
//
//  Created by Grey  on 28.09.2023.
//

import SwiftUI

struct CustomizedAnimations: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me"){
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        overlay( // Here we use these repeatForever() animations in combination with onAppear() to make animations that start immediately and continue animating for the life of the view.
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(.easeOut, value: animationAmount)// There other styles that can be done with the animation and the rest includes:
        //.animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAmount)
        
        //.animation(.easeInOut(duration: 2), value: animationAmount) For more precise control, we can customize the animation with a duration specified as a number of seconds.
        
//        .animation(
//        .easeInOut(duration: 2)
//            .delay(1),
//        value: animationAmount
//    )
        
        //Here we ask the animation to repeat a certain number of times, and even make it bounce back and forward by setting autoreverses to true. This creates a one-second animation that will bounce up and down before reaching its final size
//        .animation(
//            .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true),
//            value: animationAmount
//        )
        
        
//        For continuous animations, there is a repeatForever() modifier that can be used like this:
//        .animation(
//            .easeInOut(duration: 1)
//                .repeatForever(autoreverses: true),
//            value: animationAmount
//        )
        
    }
}

struct CustomizedAnimations_Previews: PreviewProvider {
    static var previews: some View {
        CustomizedAnimations()
    }
}
