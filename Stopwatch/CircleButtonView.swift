//
//  CircleButtonView.swift
//  Stopwatch
//
//  Created by Sophie Haber on 02.11.23.
//

import SwiftUI

struct CircleButtonView: View {
    
    //MARK: Stored properties
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    //MARK: Computed properties
    
    //Returns the botton's user interface...
    var body: some View {
        
        ZStack {
//First layer
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 100)
            
//Second layer
            Circle()
                .foregroundColor(.black)
            .frame(width: 93)
            
//Third layer
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 89)
            
//Forth layer
            
            Text(label)
                .foregroundColor(labelColor)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonView(
        buttonColor: .gray,
        label: "Reset",
        labelColor: .white
    )
}
