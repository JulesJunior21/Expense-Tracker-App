//
//  RencentTransactionList.swift
//  ExpenseTracker
//
//  Created by Jules Junior on 01/08/2022.
//

import SwiftUI

struct RencentTransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    
    var body: some View {
            VStack {
                HStack{
                    // Header title
                    Text("Recent Transaction")
                        .bold()
                    
                    Spacer()
                    
                    // Header link
                    NavigationLink{
                    } label: {
                        HStack(spacing: 4) {
                            Text("See All")
                            Image (systemName: "chevron.right")
                        }
                        .foregroundColor(Color.text)
                    }
                }
                .padding(.top)
                
                // Rencent transaction list
                ForEach(Array(transactionListVM.transactions.prefix(5).enumerated()), id: \.element) { index, transaction in
                    TransactionRow(transaction: transaction)
                    
                    Divider()
                        .opacity(index == 4 ? 0 : 1)
                }
            }
            .padding()
            .background()
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

struct RencentTransactionList_Previews: PreviewProvider {
    
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    
    static var previews: some View {
        Group {
            RencentTransactionList()
            RencentTransactionList()
                .preferredColorScheme(.dark)
        }
        .environmentObject(transactionListVM)
    }
}

