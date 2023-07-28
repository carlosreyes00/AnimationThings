//
//  ContentView.swift
//  AnimationThings
//
//  Created by Carlos Rafael Reyes Magadán on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Sample00()
            Sample01()
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
