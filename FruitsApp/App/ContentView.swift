//
//  ContentView.swift
//  FruitsApp
//
//  Created by stamoulis nikolaos on 26/6/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: -PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK:: -BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitsRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
        }//: NAVIGATION
        
    }
}

#Preview {
    ContentView()
}

