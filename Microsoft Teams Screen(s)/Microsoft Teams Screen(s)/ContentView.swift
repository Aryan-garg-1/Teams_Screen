//
//  ContentView.swift
//  Microsoft Teams Screen(s)
//
//  Created by Aryan Garg on 15/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView (selection: $selection) {
            all()
                .tabItem{
                    Label("Notification", systemImage: "bell")
                }
            
            all().tabItem{
                
                Label("Chat", systemImage: "ellipsis.message")
            }
            
            Teams().tabItem {
                Label("Teams",systemImage: "person.3.fill")
            }.tag(1)
            
            all().tabItem{
                
                Label("Calendar", systemImage: "calendar")
            }
            
            all().tabItem{
                
                Label("More", systemImage: "ellipsis")
            }
        }.onAppear{
            UIDevice.current.setValue( UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")//Forcing the rotation to portrait
            AppDelegate.orientationLock = .portrait // And making sure it stays that way
        }.onDisappear {
            AppDelegate.orientationLock = .all // Unlocking the rotation when leaving the view
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
