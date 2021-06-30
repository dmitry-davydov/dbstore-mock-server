//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

struct ProductItemResponse: Content {
    let result: Int
    let product_name: String
    let product_price: Int
    let product_description: String
}
