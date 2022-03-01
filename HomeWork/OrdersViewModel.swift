//
//  OrdersViewModel.swift
//  HomeWork
//
//  Created by Pavel on 27.02.2022.
//

import SwiftUI

final class OrdersViewModel: ObservableObject {
    @Published var orderViewModelItems = [OrderViewModel(name: "Order 1"),
                                          OrderViewModel(name: "Order 2"),
                                          OrderViewModel(name: "Order 3"),
                                          OrderViewModel(name: "Order 4"),
                                          OrderViewModel(name: "Order 5")]
}

final class OrderViewModel: ObservableObject, Identifiable {
    @Published var id = UUID()
    @Published var name: String
    
    init(name: String) {
        self.name = name
    }
}
