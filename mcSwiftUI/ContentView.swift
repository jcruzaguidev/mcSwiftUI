//
//  ContentView.swift
//  mcSwiftUI
//
//  Created by Jcruz on 15/12/22.
//

import SwiftUI

struct ContentView: View {
    let names = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
   
    var body: some View {
        NavigationStack {
            List {
                ForEach(names, id:\.self) { name in
                    ListItem(name: name)
                }
            }
            .navigationTitle("Nombres")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
