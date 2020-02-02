//
//  ContentView.swift
//  timeConvert
//
//  Created by Ethan Holen on 2/2/20.
//  Copyright © 2020 Ethan Holen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var time = ""
    @State private var unit = 0
    
    @State private var convertUnit = 0
    
    private var convertedTime: Int{
        
        let timeSeconds = convertToSeconds(i: Int(time) ?? 0, name: unitTypes[unit])
        
        switch convertUnit {
        case 0:
            return timeSeconds
            
        case 1:
            return timeSeconds / 60
            
        case 3:
            return timeSeconds / 3600
        default:
            return 0
        }
        
        
    }
    
    
    let unitTypes = ["Seconds", "Minutes", "Hours"]
    
    
    func convertToSeconds(i: Int, name: String) -> Int {
        switch name {
        case "Seconds":
            return i

        case "Minutes":
            return i*60

        case "Hours":
            return i*3600

        default:
            return 0
        }
    }
    
    
    var body: some View {
        
        NavigationView{
            Form{
                Section(header: Text("Enter time in Seconds minutes or hours.")){
                    
                    TextField("Time", text: $time)
                        .keyboardType(.decimalPad)
                    
                    Picker("Tip percentage", selection: $unit){
                        ForEach(0 ..< unitTypes.count) {
                            Text("\(self.unitTypes[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                }
                
                
                Section(header: Text("What would you like to convert that to?")){
                    Picker("Tip percentage", selection: $convertUnit){
                        ForEach(0 ..< unitTypes.count) {
                            Text("\(self.unitTypes[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                }
                
                Section(header: Text("Converted unit")){
                    Text("\(convertedTime)")
                }
            }
        .navigationBarTitle("Time Convert")
        }

//        NavigationView{
//
//            Form{
//                Section(header: Text("Unit to be converted")){
//
//                    TextField("Unit", text: $initialValue)
//
//                    Picker("Initial Unit", selection: $initialUnit){
//                        ForEach(0 ..< unitTypes.count){
//                            Text("\(self.unitTypes[$0])")
//
//                        }
//                    }
//                .pickerStyle(SegmentedPickerStyle())
//                }
//
//                Section{
//                    Text("\(convertedValue)")
//                }
//            }
//
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
