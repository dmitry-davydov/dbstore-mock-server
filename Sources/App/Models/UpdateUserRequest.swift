//
//  File 2.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

struct UpdateUserRequest: Content {
    let id_user: Int
    let username: String
    let password: String
    let email: String
    let gender: String
    let credit_card: String
    let bio: String
}
