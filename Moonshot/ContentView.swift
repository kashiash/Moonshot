//
//  ContentView.swift
//  Moonshot
//
//  Created by Jacek Placek on 18/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
        let missions: [Mission] = Bundle.main.decode("missions.json")
      
        let columns = [
            GridItem(.adaptive(minimum: 150))
        ]
        
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            Text("Detail view")
                        } label: {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)

                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Moonshot")
        }
    }}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
