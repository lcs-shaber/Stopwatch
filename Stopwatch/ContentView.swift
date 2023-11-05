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
                
                Spacer()
                
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
                
        //List of times
                List{
                    Group{
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("4")
                        Text("5")
                    }
                    
        //Remove inset from list items
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
        //Set the amount of verticle height we want this list to take up
                .frame(height: 300)
        //Adjust list style to match design
                .listStyle(.plain)
                
            }
            .padding()
        }
        
        
        
    }
}

#Preview {
    // tab bar
    TabView(selection: Binding.constant(3)){
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
            .tag(1)
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
            .tag(2)
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
            .tag(3)
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
            .tag(4)
    }
//change the colour of the currently active tab item
        .accentColor(.orange)
//ensure that tab items which are not active remain visible
        .preferredColorScheme(.dark)
}
