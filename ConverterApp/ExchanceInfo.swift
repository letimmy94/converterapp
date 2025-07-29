//
//  ExchanceInfo.swift
//  ConverterApp
//
//  Created by Phuc Le on 7/29/25.
//

import SwiftUI

struct ExchanceInfo: View {
    var body: some View {
        ZStack{
            // background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                // title text
                // description text
                // exchange rates
                HStack{
                    // left currency image
                    // exchange rate text
                    // right currency image
                }
                // done button
            }
        }
    }
}

#Preview {
    ExchanceInfo()
}
