//
//  ContentView.swift
//  WeSplit
//
//  Created by Ethan Holen on 1/29/20.
//  Copyright © 2020 Ethan Holen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = ""
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double{
        //Calculate the total per person here
        let peopleCount = Double(numberOfPeople) ?? 1
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
        return (orderAmount + (orderAmount * (tipSelection/100)))/peopleCount
    }
    
    var billTotal: Double {
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
        return orderAmount + (orderAmount * (tipSelection/100))
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    TextField("Number of People", text: $numberOfPeople)
                        .keyboardType(.decimalPad)
        
                }
                
                
                Section(header: Text("How much tip would you like to leave?")){
                    Picker("Tip percentage", selection: $tipPercentage){
                        ForEach(0 ..< tipPercentages.count) {
                            Text("%\(self.tipPercentages[$0])")
                        }
                    }
                .pickerStyle(SegmentedPickerStyle())
                }
                
                
                Section(header: Text("Amount per person")){
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                    
                }
                
                
                Section(header: Text("Total Amount")){
                    Text("$\(billTotal, specifier: "%.2f")")
                }
            }
        .navigationBarTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
