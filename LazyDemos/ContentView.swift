//
//  ContentView.swift
//  LazyDemos
//
//  Created by John Kearon on 4/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {  // A view that arranges its children in a line that grows vertically, creating items only as needed.
                ForEach(0..<100) { i in
                    let _ = print("Dang \(i)")
                    RedAndCyanView()
                }
                
            }
           
        }
        .padding()
    }
}

struct RedAndCyanView: View {
    var body: some View {
        ZStack {  // A view that overlays its subviews, aligning them in both axes.
            Color(.red)
            Rectangle()
                .fill(.cyan)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ContentView()
}

