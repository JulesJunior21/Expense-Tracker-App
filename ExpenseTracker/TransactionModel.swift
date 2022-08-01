//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by Jules Junior on 01/08/2022.
//

import Foundation

struct Transaction: Identifiable, Decodable {
    let id: Int
    let date: String
    let instruction: String
    let account: String
    let merchant: String
    let amount: Double
    let type: TransacrionType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    var dateParsed: Date {
        date.dateParsed()
    }
    
    var signedAmount: Double {
        return type == TransacrionType.credit.rawValue ? amount : -amount
    }
}

enum TransacrionType: String {
    case debit = "debit"
    case credit = "credit"
}
