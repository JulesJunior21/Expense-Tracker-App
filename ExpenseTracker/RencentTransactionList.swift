//
//  RencentTransactionList.swift
//  ExpenseTracker
//
//  Created by Jules Junior on 01/08/2022.
//

import SwiftUI

struct RencentTransactionList: View {
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
            
    }
        

}
    
}

struct RencentTransactionList_Previews: PreviewProvider {
    static var previews: some View {
        RencentTransactionList()
    }
}

