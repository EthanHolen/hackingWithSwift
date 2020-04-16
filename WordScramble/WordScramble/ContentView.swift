//
//  ContentView.swift
//  WordScramble
//
//  Created by Ethan Holen on 4/16/20.
//  Copyright © 2020 Ethan Holen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        let word = "swft"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf8.count)
        
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
        
        
        print(allGood)
        
        return Text("Hello")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
