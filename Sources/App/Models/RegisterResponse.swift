//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
