//
//  Sample01.swift
//  AnimationThings
//
//  Created by Carlos Rafael Reyes Magadán on 7/28/23.
//

import SwiftUI

struct Sample01: View {
    @State private var angle = 0.0
    @State private var auxValue = 1.0
    
    var body: some View {
        Button {
            auxValue += 100
//            angle += 45
        } label: {
            Text("Press here")
                .fontWeight(.light)
        }
        .padding()
        .overlay {
            Capsule(style: .continuous)
                .stroke(Gradient(colors: [.pink, .accentColor]), style: StrokeStyle(lineWidth: 1, dash: [75], dashPhase: auxValue))
        }
        .rotationEffect(.degrees(angle))
        // if you want to add a different animation to each state change (border and angle), you can use withAnimation(_ animation:_ body:)
        .animation(.spring(dampingFraction: 0.5), value: auxValue)
    }
}

struct Sample01_Previews: PreviewProvider {
    static var previews: some View {
        Sample01()
    }
}
