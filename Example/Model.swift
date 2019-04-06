//
//  Model.swift
//  DataSource
//
//  Created by Gurung Bishow on 6/4/19.
//  Copyright © 2019 Gurung Bishow. All rights reserved.
//

import Foundation
struct User:Codable {
    var id = 0
    var firstName = ""
    var lastName = ""
    var imgUrl = ""
    
    private enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case imgUrl = "avatar"
    }
}
