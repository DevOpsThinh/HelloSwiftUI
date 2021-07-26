//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Nguyễn Trường Thịnh on 27/07/2021.
//

import SwiftUI

struct ContentView: View {
    ///*****************************************///
    ///                State variables             ///
    ///*****************************************///
    @State private var weightText: String = ""
    @State private var heightText: String = ""
    @State private var bmi: Double = 0
    
    var body: some View {
        VStack {
            Text("BMI Calculator:").font(.largeTitle).foregroundColor(Color.blue)
            TextField("Enter Weight (in kilograms)", text: $weightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.orange)
            
            TextField("Enter Height (in meters)", text: $heightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.orange)
            
            Button(action:{
                let wei = Double(self.weightText)!
                let hei = Double(self.heightText)!
                self.bmi = wei/(hei * hei)
            }){
                Text("Calculate BMI")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.orange)
            }
            
            Text("BMI: \(bmi)").font(.title).foregroundColor(Color.gray).padding()
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone SE (2nd generation)")
    }
}
