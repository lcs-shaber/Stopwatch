//
//  ContentView.swift
//  Stopwatch
//
//  Created by Sophie Haber on 02.11.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack {
            
            // First layer
            Color.yellow
                .ignoresSafeArea()
            
            //Second layer (rest of interface)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
