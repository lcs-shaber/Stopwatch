//
//  CircleButtonView.swift
//  Stopwatch
//
//  Created by Sophie Haber on 02.11.23.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
        
        ZStack {
//First layer
            Circle()
                .foregroundColor(.gray)
            .frame(width: 100)
            
//Second layer
            Circle()
                .foregroundColor(.black)
            .frame(width: 93)
            
//Third layer
            Circle()
                .foregroundColor(.gray)
            .frame(width: 89)
            
//Forth layer
            Text("Reset")
                .foregroundColor(.white)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonView()
}
