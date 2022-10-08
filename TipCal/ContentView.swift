//
//  ContentView.swift
//  TipCal
//
//  Created by Risul Rashed
//

import SwiftUI

struct ContentView: View {
    @State var total = "10"
    @State var tipPerc = 0.0
    var body: some View {
        VStack{
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            HStack{
                Text("$")
                TextField("Ammount", text: $total)
            }
            .padding()
            HStack{
                Slider(value: $tipPerc, in: 0...30, step: 1.0)
                Text("\(Int(tipPerc))%")
            } .padding()
            if let tipAm = Double(total){
                Text("Tip Ammount: $ \(tipAm * tipPerc / 100, specifier: "%0.2f")")
            } else{
                Text("Invalid Input")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
