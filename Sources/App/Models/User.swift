//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor
struct User: Content {
    let id_user: Int
    let user_login: String
    let user_name: String
    let user_lastname: String
}
