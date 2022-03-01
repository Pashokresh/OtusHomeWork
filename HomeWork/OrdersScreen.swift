//
//  OrdersScreen.swift
//  HomeWork
//
//  Created by Pavel on 25.02.2022.
//

import SwiftUI

struct OrdersScreen: View {
    
    @EnvironmentObject var ordersViewModel: OrdersViewModel
    @Binding var selectedRowUUID: UUID?
    
    var body: some View {
        List(ordersViewModel.orderViewModelItems) { item in
            NavigationLink(destination: Text(item.name),
                           tag: item.id,
                           selection: $selectedRowUUID,
                           label: {
                Text(item.name)
            })
        }
    }
}

struct OrdersScreen_Previews: PreviewProvider {
    static var previews: some View {
        OrdersScreen(selectedRowUUID: Binding.constant(UUID()))
    }
}
