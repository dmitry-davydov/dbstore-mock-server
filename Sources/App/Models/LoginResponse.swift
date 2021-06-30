//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

struct LoginResponse: Content {
    let result: Int
    let errorMessage: String?
    let user: User
    let authToken: String
}
