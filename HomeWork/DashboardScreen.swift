//
//  DashboardScreen.swift
//  HomeWork
//
//  Created by Pavel on 25.02.2022.
//

import SwiftUI

struct DashboardScreen: View {
    
    @Binding var currentTabViewIndex: Int
    @Binding var selectedOrdersRowUUID: UUID?
    
    @EnvironmentObject var ordersViewModel: OrdersViewModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 8, content: {
            Text("DashboardScreen")
            Button("Open Order 2") {
                self.currentTabViewIndex = 1
                self.selectedOrdersRowUUID = ordersViewModel.orderViewModelItems[1].id
            }
            .foregroundColor(.accentColor)
        })
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen(currentTabViewIndex: Binding.constant(0),
                        selectedOrdersRowUUID: Binding.constant(UUID()))
    }
}
