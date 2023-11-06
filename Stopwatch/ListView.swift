//
//  ListView.swift
//  Stopwatch
//
//  Created by Sophie Haber on 05.11.23.
//

import SwiftUI

struct ListView: View {
    
//MARK: Stored properties
    let label: String
    let time: String
    let labelColor: Color
//MARK: Computed properties
    
    var body: some View {
        
        //List of times
                
                HStack{
                    Text(label)
                    Spacer()
                    Text(time)
                }
                        .foregroundColor(labelColor)
                    
            .font(Font.system(size: 25))
        
       
                
    }
}

#Preview {
    ListView(
        label: "Lap 5",
        time: "00:00.98",
        labelColor: .black
    )
}
