//
//  Detail.swift
//  mcSwiftUI
//
//  Created by Jcruz on 15/12/22.
//

import SwiftUI

struct Detail: View {
    let name:String
    
    var body: some View {
        Text("Hola \(name)")
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(name:"")
    }
}
