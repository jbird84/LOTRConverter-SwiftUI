//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Kinney Kare on 6/4/24.
//

import Foundation
import TipKit


struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    var message: Text? {
        Text("You can tap the left or the right currency to bring up the Select Currency screen.")
    }
    
    
}
