//
//  ContentView.swift
//  Converter-HWS
//
//  Created by Denys on 11/16/26.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
    let units: [UnitLength] = [.meters, .kilometers, .feet, .yards, .miles]
    
    @State private var inputValue: Double = 0.0
    @State private var inputUnit: UnitLength = .meters
    @State private var outputUnit: UnitLength = .kilometers
    
    @FocusState private var valueIsFocused: Bool
    
    var convertedResult: Double {
        let input = Measurement(value: inputValue, unit: inputUnit)
        return input.converted(to: outputUnit).value
    }
    
    let formatter = MeasurementFormatter()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Units") {
                    TextField("Enter number", value: $inputValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($valueIsFocused)
                    
                    Picker("Units", selection: $inputUnit) {
                        ForEach(units, id: \.self) {
                            Text(formatter.string(from: $0))
                        }
                    }.pickerStyle(.segmented)
                }
                
                Section("Output") {
                    Text(convertedResult, format: .number.precision(.fractionLength(0)))
                    Picker("Units", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text(formatter.string(from: $0))
                        }
                    }.pickerStyle(.segmented)
                }
            }
            .toolbar {
                if valueIsFocused {
                    Button("Done") {
                        valueIsFocused = false
                    }
                }
            }
            .navigationTitle("Converter")
        }
    }
}

#Preview {
    ContentView()
}
