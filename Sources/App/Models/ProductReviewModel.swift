//
//  File.swift
//  
//
//  Created by Дима Давыдов on 02.07.2021.
//

import Foundation
import Vapor

struct ProductReviewModel: Content {
    let id_comment: Int
    let id_user: Int
    let text: String
}

typealias ProductReviewModelCollection = [ProductReviewModel]
