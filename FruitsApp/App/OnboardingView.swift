//
//  OnboardingView.swift
//  FruitsApp
//
//  Created by stamoulis nikolaos on 26/6/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: -PROPERTIES
    
    // MARK: -BODY
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }// : LOOP
        }// : TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}


// MARK: -PREVIEW
#Preview {
    OnboardingView()
}
