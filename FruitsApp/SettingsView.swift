//
//  SettingsView.swift
//  FruitsApp
//
//  Created by stamoulis nikolaos on 31/7/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: -PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: -BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
            }//: SCROLL
          
        }//: NAVIGATION
        
    }
}
// MARK: -PREVIEW
#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
