//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Nguyễn Trường Thịnh on 27/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    // a state variable: count
    @State var count: Int = 0
    
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .fill(Color.orange)
                
                Button(action:{
                    self.count += 1
                }){
                    Text("Increment")
                }
            }
            .frame(width: 100.0, height: 100.0)
            
            VStack(alignment:.leading, spacing: 4){
                Text("Count: \(count)")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                Text("Truong Thinh, 2021")
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone SE (2nd generation)")
    }
}
