//
//  mcSwiftUIApp.swift
//  mcSwiftUI
//
//  Created by Jcruz on 15/12/22.
//

import SwiftUI

@main
struct mcSwiftUIApp: App {
    @StateObject var empleados = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(empleados)
        }
    }
}
