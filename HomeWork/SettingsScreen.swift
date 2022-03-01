//
//  SettingsScreen.swift
//  HomeWork
//
//  Created by Pavel on 25.02.2022.
//

import SwiftUI

struct SettingsScreen: View {
    @State private var isModal = false
    @State private var isActivityAnimating = true
    
    var body: some View {
        Button("Open Modal") {
            self.isModal = true
        }.sheet(isPresented: $isModal) {
            VStack {
                ActivityIndicatorView(isAnimating: $isActivityAnimating)
                    .padding()
                Text("Modal sheet screen")
            }
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
