//
//  ContentView.swift
//  BetterSleep
//
//  Created by Ethan Holen on 4/15/20.
//  Copyright © 2020 Ethan Holen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeup = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    //Variables for alert
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView{
            Form{
                // Wake up?
                VStack(alignment: .leading, spacing: 0){
                    Text("When do you want to wake up?")
                        .font(.headline)
                    
                    DatePicker("Please enter a time", selection: $wakeup, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                        .datePickerStyle(WheelDatePickerStyle())
                }
                
                // Desired amount of sleep?
                VStack(alignment: .leading, spacing: 0){
                    Text("Desired amount of Sleep")
                        .font(.headline)
                    
                    Stepper(value: $sleepAmount, in: 4...12, step: 0.25){
                        Text("\(sleepAmount, specifier: "%g") hours")
                    }
                }
                
                //Coffe Intake?
                VStack(alignment: .leading, spacing: 0){
                    Text("Daily Coffee intake")
                        .font(.headline)
                    
                    Stepper(value: $coffeeAmount, in: 1...20){
                        if coffeeAmount == 1 {
                            Text("1 cup")
                        }else{
                            Text("\(coffeeAmount) cups")
                        }
                    }
                }
            }
            .navigationBarTitle("BetterRest")
        .navigationBarItems(trailing:
            Button(action: calculateBedTime){
                Text("Calculate")
            }
            
            )
                .alert(isPresented: $showingAlert){
                    Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date()
    }
    
    func calculateBedTime() {
        let model = SleeepCalculator()
        
        let components =
            Calendar.current.dateComponents([.hour, .minute], from: wakeup)
        let hour = (components.hour ?? 0) * 60 * 60
        let minute = (components.minute ?? 0) * 60
        
        do{
            let prediction = try
                model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let sleepTime = wakeup - prediction.actualSleep
            
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            
            alertMessage = formatter.string(from: sleepTime)
            alertTitle = "Your ideal bedtime is..."
            
            
        } catch{
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
            
        }
        showingAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
