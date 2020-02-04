//
//  ContentView.swift
//  guessTheFlag
//
//  Created by Ethan Holen on 2/3/20.
//  Copyright © 2020 Ethan Holen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .bottom, endPoint: .top).edgesIgnoringSafeArea(.all)
            
            Button(action: {
                //print("Button was tapped")
                self.showingAlert = true
            }) {
                Text("Show Alert")
                    
            }  }
        
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
