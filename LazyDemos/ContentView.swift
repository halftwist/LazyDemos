//
//  ContentView.swift
//  LazyDemos
//
//  Created by John Kearon on 4/18/25.
//

import SwiftUI

struct ContentView: View {
    @State private var colummns = [
//        GridItem(.fixed(100)),
//        GridItem(.fixed(100)),
//        GridItem(.fixed(100))
        GridItem(),
        GridItem(),   // flexible
        GridItem()
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: colummns) {
                ForEach(0..<100) { i in
                    let _ = print("Dang \(i)")
                    RedAndCyanView()
                }
            }

//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
//                ForEach(0..<100) { i in
//                    let _ = print("Dang \(i)")
//                    RedAndCyanView()
//                }
//            }
        }
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: colummns) {
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

