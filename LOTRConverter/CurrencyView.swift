//
//  CurrencyView.swift
//  LOTRConverter
//
//  Created by Kinney Kare on 6/3/24.
//

import SwiftUI

struct CurrencyView: View {
    
    var image: ImageResource
    var text: String
    
    var body: some View {
        ZStack(alignment: .bottom, content: {
            Image(image)
                .resizable()
                .scaledToFit()
            Text(text)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        })
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyView(image: .copperpenny, text: "Copper Penny")
}
