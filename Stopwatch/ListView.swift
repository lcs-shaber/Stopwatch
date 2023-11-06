//
//  ListView.swift
//  Stopwatch
//
//  Created by Sophie Haber on 05.11.23.
//

import SwiftUI

struct ListView: View {
    
//MARK: Stored properties
    let label5: String
    let label4: String
    let label3: String
    let label2: String
    let label1: String
    
    let labelColor5: Color
    let labelColor4: Color
    let labelColor3: Color
    let labelColor2: Color
    let labelColor1: Color
    
//MARK: Computed properties
    
    var body: some View {
        
        //List of times
            List{
                
                    
                    Text(label5)
                        .foregroundColor(labelColor5)
                    
                    Text(label4)
                        .foregroundColor(labelColor4)
                    
                    Text(label3)
                    .foregroundColor(labelColor3)
                    
                    Text(label2)
                        .foregroundColor(labelColor2)

                    Text(label1)
                        .foregroundColor(labelColor1)
                
                
            }
                    
            .font(Font.system(size: 25))
        
        //Remove inset from list items
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        
        //Set the amount of verticle height we want this list to take up
                .frame(height: 300)
        //Adjust list style to match design
                .listStyle(.plain)
                
    }
}

#Preview {
    ListView(
        label5: "Lap 5",
        label4: "Lap 4",
        label3: "Lap 3",
        label2: "Lap 2",
        label1: "Lap 1",
        labelColor5: .black,
        labelColor4: Color("MidRed"),
        labelColor3: Color("MidGreen"),
        labelColor2: .black,
        labelColor1: .black
    )
}
