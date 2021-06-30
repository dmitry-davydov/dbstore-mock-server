//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

struct LogoutRequest: Content {
    let id_user: Int
}
