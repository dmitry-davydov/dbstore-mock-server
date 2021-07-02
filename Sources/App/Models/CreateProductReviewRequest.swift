//
//  File.swift
//  
//
//  Created by Дима Давыдов on 02.07.2021.
//

import Foundation
import Vapor

struct CreateProductReviewRequest: Content {
    let id_user: Int
    let text: String
}
