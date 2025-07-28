//
//  ContentView.swift
//  ConverterApp
//
//  Created by Phuc Le on 6/16/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeSymbol = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
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
                        .padding(.bottom, -5)
                        // text field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
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
                        .padding(.bottom, -5)
                        
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                // conversion section
                Spacer()
                
                HStack {
                    Spacer()
                    Button {
                        showExchangeSymbol.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
            }
//            .border(.red)
        }
    }
}

#Preview {
    ContentView()
}
