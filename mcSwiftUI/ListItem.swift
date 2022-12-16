//
//  ListItem.swift
//  mcSwiftUI
//
//  Created by Jcruz on 15/12/22.
//

import SwiftUI

struct ListItem: View {
    let name: String
    var body: some View {
        NavigationLink(destination: Detail(name: name)) {
            HStack {
                VStack(alignment: .leading) {
                    Text("\(name)")
                        .font(.headline)
                    Text("Comentario")
                        .font(.footnote)
                }
                Spacer()
                Image(systemName: "pencil")
                    .font(.title)
            }
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(name: "")
    }
}
