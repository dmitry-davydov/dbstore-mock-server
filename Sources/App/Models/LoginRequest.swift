//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

struct LoginRequest: Content {
    let username: String
    let password: String
    let cookies: String
}
