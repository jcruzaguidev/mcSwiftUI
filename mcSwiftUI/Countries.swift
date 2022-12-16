//
//  Countries.swift
//  mcSwiftUI
//
//  Created by Jcruz on 15/12/22.
//

import SwiftUI

struct Countries: View {
    @EnvironmentObject var empleados:DataModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(empleados.datos) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(item.lastName), \(item.firstName)")
                                .font(.title2)
                                .foregroundColor(.blue)
                            Text("\(item.email)")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "person.fill")
                            .frame(width: 50, height: 50)
                            .background(.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                }
            }
            .navigationTitle("Empleados")
            .navigationBarItems(trailing:
                Button(action: {}, label: {
                Image(systemName: "plus")
            })
            )
        }
    }
}

struct Countries_Previews: PreviewProvider {
    static var previews: some View {
        Countries()
            .environmentObject(DataModel())
    }
}
