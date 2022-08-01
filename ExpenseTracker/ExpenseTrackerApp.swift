//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Jules Junior on 01/08/2022.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
   @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
