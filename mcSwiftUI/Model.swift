//
//  Model.swift
//  mcSwiftUI
//
//  Created by Jcruz on 15/12/22.
//

import Foundation

struct DataTest: Codable, Identifiable {
    let id: Int
    let firstName, lastName, email: String
    let gender: Gender
    let ipAddress: String

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case email, gender
        case ipAddress = "ip_address"
    }
}

enum Gender: String, Codable {
    case agender = "Agender"
    case bigender = "Bigender"
    case female = "Female"
    case genderfluid = "Genderfluid"
    case genderqueer = "Genderqueer"
    case male = "Male"
    case nonBinary = "Non-binary"
    case polygender = "Polygender"
}

class DataModel:ObservableObject {
    @Published var datos:[DataTest] = []
    
    init() {
        guard let url = Bundle.main.url(forResource: "DATA", withExtension: "json") else {
            datos = []
            return
        }
        do {
            let data = try Data(contentsOf: url)
            datos = try JSONDecoder().decode([DataTest].self , from: data)
        } catch {
            print("Error en la carga \(error)")
            datos = []
        }
    }
}
