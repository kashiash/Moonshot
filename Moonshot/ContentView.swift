//
//  ContentView.swift
//  Moonshot
//
//  Created by Jacek Placek on 18/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        
        let layout = [
            GridItem(.adaptive(minimum: 80, maximum: 120)),
            GridItem(.adaptive(minimum: 80, maximum: 120)),
            GridItem(.adaptive(minimum: 80, maximum: 120))
        ]
            
        
        
        ScrollView{
            LazyHGrid(rows: layout){
                ForEach(0..<1000){
                    Text("Item \($0)")
                      //  .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }
        }
    }
}

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
