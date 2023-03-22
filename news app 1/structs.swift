//
//  structs.swift
//  news app 1
//
//  Created by Kamil Aliyev  on 15.03.23.
//

import Foundation

struct Login {
    var fullname: String
    var email: String
    var password: String
}

struct News: Codable {
    var image: String
    var title: String
    
}
