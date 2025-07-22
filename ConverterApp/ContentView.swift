//
//  ContentView.swift
//  ConverterApp
//
//  Created by Phuc Le on 6/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // background
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack {
                // prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                // currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                HStack {
                    // Left conversion section
                    VStack {
                        // currency
                        HStack {
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text("Silverpiece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        // text field
                        Text("Text Field")
                    }
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    // Right conversion section
                    VStack {
                        // currency
                        HStack {
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)                        }
                        // text field
                        Text("Text Field")
                    }                }
                // conversion section
               // Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
            }
//            .border(.red)
        }
    }
}

#Preview {
    ContentView()
}
