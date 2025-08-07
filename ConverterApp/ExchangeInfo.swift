//
//  ExchanceInfo.swift
//  ConverterApp
//
//  Created by Phuc Le on 7/29/25.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack{
            // background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                // title text
                Text("Exchange Rates")
                    .font(.title)
                    .font(.largeTitle)
                    .tracking(3)
                // description text
                Text("Know your worth bub")
                    .font(.title3)
                    .padding()
                // exchange rates
                ExtractedView()
                ExtractedView()
                ExtractedView()
                ExtractedView()

                // done button
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
            }
        }
    }
}

#Preview {
    ExchangeInfo()
}

struct ExtractedView: View {
    var body: some View {
        HStack{
            // left currency image
            Image(.goldpiece)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            // exchange rate text
            Text("1 Gold Piece = 4 Gold Pennies")
            // right currency image
            Image(.goldpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}



#Preview {
    
}
