//
//  ContentView.swift
//  gridStack
//
//  Created by Ethan Holen on 2/10/20.
//  Copyright © 2020 Ethan Holen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    struct GridStack<Content: View>:View {
        let rows: Int
        let columns: Int
        let content: (Int, Int) -> Content
        
        var body: some View{
            VStack{
                ForEach(0 ..< rows){ row in
                    HStack{
                        ForEach(0 ..< self.columns){ column in
                            self.content(row, column)                        }
                    }
                }
            }
        }
    }
    
    
    var body: some View {
        GridStack(rows: 4, columns: 4){ row, col in
            HStack{
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
