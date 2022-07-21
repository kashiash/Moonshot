//
//  ContentView.swift
//  Moonshot
//
//  Created by Jacek Placek on 18/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        GeometryReader{ geo in
//   Image("scheffau")
//            .resizable()
//            .scaledToFit()
//            .frame(width: geo.size.width * 0.8)
//            .frame(width: geo.size.width, height: geo.size.height)
//        }
        
//        ScrollView{
//            LazyVStack(spacing: 10){
//                ForEach(0..<100){
//                    CustomText("Item \($0)")
//                        .font(.title)
//                }
//            }
//            .frame(maxWidth: .infinity)
//        }
       
        
        NavigationView{
            List(0..<100){ row in
            NavigationLink{
                Text("Detail View \(row) ")
            } label: {
                Text("Row!\(row) ")
                    .padding()
                  
            }
            }

        }
        .navigationTitle("Dupa zbita !")
        
    }
}

struct CustomText: View {
    let text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
