//
//  AnimationGestures.swift
//  Animations
//
//  Created by Grey  on 29.09.2023.
//

import SwiftUI
// Here we were introduced to the Drag Gestures and how to use it in animations
struct AnimationGestures: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width: 300, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .offset(dragAmount)
                    .gesture(
                        DragGesture()
                            .onChanged{ dragAmount = $0.translation}
                            .onEnded{ _ in dragAmount = .zero}
                    )// What this basically does is that it states that the card with which we made once dragged it would move around the view but would automatically return to the center.
                    .animation(.spring(), value: dragAmount)
    }
}

// Learnt how to make another view just like the other one this can be use to make simpler lines of code.
struct HelloSwiftUIText: View {
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
                    ForEach(0..<letters.count, id: \.self) { num in
                        Text(String(letters[num]))
                            .padding(5)
                            .font(.title)
                            .background(enabled ? .blue : .red)
                            .offset(dragAmount)
                            .animation(.default.delay(Double(num) / 20), value: dragAmount)
                    }
                }
                .gesture(
                    DragGesture()
                        .onChanged { dragAmount = $0.translation }
                        .onEnded { _ in
                            dragAmount = .zero
                            enabled.toggle()
                        }
                )
    }
}


struct AnimationGestures_Previews: PreviewProvider {
    static var previews: some View {
        AnimationGestures()
    }
}
