//
//  Animation00.swift
//  AnimationThings
//
//  Created by Carlos Rafael Reyes Magadán on 7/28/23.
//

import SwiftUI

struct Sample00: View {
    @State private var scale = 1.0
    private var duration: Double = 0.1
    
    var body: some View {
        VStack {
            Text("\(scale)")
            Text("Press here")
                .onTapGesture {
                    scale = 1.2
                    Task {
                        try await Task.sleep(for: .seconds(duration))
                        scale = 1
                    }
                }
                .foregroundColor(.accentColor)
                .scaleEffect(scale)
                .animation(.linear(duration: duration), value: scale)
        }
    }
}

struct Sample00_Previews: PreviewProvider {
    static var previews: some View {
        Sample00()
    }
}
