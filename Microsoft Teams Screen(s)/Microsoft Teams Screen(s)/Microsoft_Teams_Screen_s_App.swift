//
//  Microsoft_Teams_Screen_s_App.swift
//  Microsoft Teams Screen(s)
//
//  Created by Aryan Garg on 15/11/22.
//

import SwiftUI

@main
struct Microsoft_Teams_Screen_s_App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    static var orientationLock = UIInterfaceOrientationMask.all //By default you want all your views to rotate freely
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask{
        return AppDelegate.orientationLock
    }
}
