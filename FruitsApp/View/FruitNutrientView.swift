//
//  FruitNutrientView.swift
//  FruitsApp
//
//  Created by stamoulis nikolaos on 31/7/24.
//

import SwiftUI

struct FruitNutrientView: View {
    // MARK: -PROPERTIES
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    //MARK: -BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100gr") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//: BOX
        
    }
}


// MARK: -PREVIEW
#Preview {
    FruitNutrientView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
