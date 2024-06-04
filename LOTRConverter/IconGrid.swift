//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Kinney Kare on 6/4/24.
//

import SwiftUI

struct IconGrid: View {
    
    @Binding var currency: Currency
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currentCurrency in
                if currency == currentCurrency {
                    CurrencyView(image: currentCurrency.image, text: currentCurrency.name)
                        .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .overlay {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyView(image: currentCurrency.image, text: currentCurrency.name)
                        .onTapGesture {
                            self.currency = currentCurrency
                        }
                }
               
            }
        }
    }
}

#Preview {
    IconGrid(currency: .constant(.copperPenny))
}
