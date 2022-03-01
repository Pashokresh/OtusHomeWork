
//
//  ContentView.swift
//  HomeWork
//
//  Created by Pavel on 25.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var curretTabItem = 0
    @State var selectedRowUUID: UUID?
    
    @ObservedObject var ordersViewModel: OrdersViewModel = OrdersViewModel()
    
    var body: some View {
        NavigationView {
            TabView(selection: $curretTabItem) {
                DashboardScreen(currentTabViewIndex: $curretTabItem, selectedOrdersRowUUID: $selectedRowUUID).tabItem {
                    Image(systemName: "house.fill")
                    Text("Main")
                }.tag(0)
                OrdersScreen(selectedRowUUID: $selectedRowUUID).tabItem {
                    Image(systemName: "bag.circle.fill")
                    Text("Orders")
                }.tag(1)
                SettingsScreen().tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }.tag(2)
            }.environmentObject(ordersViewModel)
        }.navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
