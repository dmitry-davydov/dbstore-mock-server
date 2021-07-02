//
//  File.swift
//  
//
//  Created by Дима Давыдов on 02.07.2021.
//

import Foundation
import Vapor

struct RemoveProductReviewRequest: Content {
    let id_comment: Int
}
