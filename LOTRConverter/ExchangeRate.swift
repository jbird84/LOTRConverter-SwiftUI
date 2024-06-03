//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Kinney Kare on 6/2/24.
//

import SwiftUI

struct  ExchangeRate: View {
    
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .copperpenny, text: "Test", rightImage: .goldpenny)
}
