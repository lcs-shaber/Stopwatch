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
            Color.black
                .ignoresSafeArea()
            
        //Second layer (rest of interface)
            VStack {
                
                Text("00:09.96")
                    .font(Font.system(size: 90,weight: .thin))
                    .foregroundColor(.white)
                
        //Create a circular button
                HStack {
                    CircleButtonView(
                        buttonColor: Color("DarkGrey"),
                        label: "Reset",
                        labelColor: .white
                    )
                    
                    Spacer()
                    
                    CircleButtonView(
                        buttonColor: Color("DarkGreen"),
                        label: "Start",
                        labelColor: .green
                    )
                }
                
            }
            .padding()
        }
        
        
        
    }
}

#Preview {
    // tab bar
    TabView{
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
    }
}
