//
//  ContentView.swift
//  Animations
//
//  Created by Ethan Holen on 4/19/20.
//  Copyright © 2020 Ethan Holen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero

    var body: some View {
        
        LinearGradient( gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged {self.dragAmount = $0.translation}
                    .onEnded { _ in
                        withAnimation(.spring()){
                        self.dragAmount = .zero
                        
                    }
                        
                }
            )


//            Button("Tap Me") {
//                self.enabled.toggle()
//            }
//            .frame(width: 200, height: 200)
//            .background(enabled ? Color.blue : Color.red)
//            .animation(.default)
//            .foregroundColor(.white)
//            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
//            .animation(.interpolatingSpring(stiffness: 10, damping: 1))
            
        }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
