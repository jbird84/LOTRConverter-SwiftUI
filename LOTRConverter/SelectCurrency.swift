//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Kinney Kare on 6/3/24.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismissView
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency

    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                Text("Select the currency you are starting with.")
                
                IconGrid(currency: $topCurrency)
               
                
                Text("Select the currency you would like to convert to.")
                
                IconGrid(currency: $bottomCurrency)
                
                Button("Done") {
                    dismissView()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
        
            }
            .padding()
            .multilineTextAlignment(.center)
            .fontWeight(.bold)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.goldPenny))
}


