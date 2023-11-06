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
                    
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(.white)
                    
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    CircleButtonView(
                        buttonColor: Color("DarkGreen"),
                        label: "Start",
                        labelColor: .green
                    )
                }
                
        //List of times
                HStack{
                    
                    ListView(
                        label5: "Lap 5",
                        label4: "Lap 4",
                        label3: "Lap 3",
                        label2: "Lap 2",
                        label1: "Lap 1",
                        labelColor5: .white,
                        labelColor4: Color("MidRed"),
                        labelColor3: Color("MidGreen"),
                        labelColor2: .white,
                        labelColor1: .white
                    )
                            
                    
                    Spacer()
                    
                    ListView(
                        label5: "00:00.98",
                        label4: "00:04.08",
                        label3: "00:00.96",
                        label2: "00:02.76",
                        label1: "00:01.16",
                        labelColor5: .white,
                        labelColor4: Color("MidRed"),
                        labelColor3: Color("MidGreen"),
                        labelColor2: .white,
                        labelColor1: .white
                    )
                   
                            
                    
                }
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
