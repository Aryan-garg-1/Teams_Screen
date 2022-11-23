//
//  Channel Views.swift
//  Microsoft Teams Screen(s)
//
//  Created by Aryan Garg on 22/11/22.
//

import SwiftUI

struct Channel_Views: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationStack{
            VStack {
                Spacer()
                HStack {
                    NavigationLink(destination: all()) {
                        Text("Page")
                            .frame(width: 180, height: 150)
                    }
                    .foregroundColor(Color(colorScheme == .dark ? .white:.black))
                    .font(.system(size:31, weight:.medium))
                    .buttonStyle(.bordered)
                    
                    
                    NavigationLink(destination: all()) {
                        Text("Class Notebook")
                            .frame(width: 180, height: 150)
                    }
                    .foregroundColor(Color(colorScheme == .dark ? .white:.black))
                    .font(.system(size:31, weight:.medium))
                    .buttonStyle(.bordered)
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    NavigationLink(destination: all()) {
                        Text("Assignments")
                            .frame(width: 180, height: 150)
                    }
                    .foregroundColor(Color(colorScheme == .dark ? .white:.black))
                    .font(.system(size:31, weight:.medium))
                    .buttonStyle(.bordered)
                    
                    
                    NavigationLink(destination: all()) {
                        Text("Grade")
                            .frame(width: 180, height: 150)
                    }
                    .foregroundColor(Color(colorScheme == .dark ? .white:.black))
                    .font(.system(size:31, weight:.medium))
                    .buttonStyle(.bordered)
                }
                Spacer()
                
                HStack {
                    NavigationLink(destination: all()) {
                        Text("Reflect")
                            .frame(width: 180, height: 150)
                    }
                    .foregroundColor(Color(colorScheme == .dark ? .white:.black))
                    .font(.system(size:31, weight:.medium))
                    .buttonStyle(.bordered)
                    
                    NavigationLink(destination: all()) {
                        Text("Channels")
                            .frame(width: 180, height: 150)
                    }
                    .foregroundColor(Color(colorScheme == .dark ? .white:.black))
                    .font(.system(size:31, weight:.medium))
                    .buttonStyle(.bordered)
                }
                Spacer()
            }.navigationTitle("NAME")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct Channel_Views_Previews: PreviewProvider {
    static var previews: some View {
        Channel_Views()
    }
}
