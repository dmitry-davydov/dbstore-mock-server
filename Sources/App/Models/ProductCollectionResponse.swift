//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

struct ProductCollectionProductItem: Content {
    let id_product: Int
    let product_name: String
    let price: Int
}

struct ProductCollectionResponse: Content {
    let page_number: Int
    let products: [ProductCollectionProductItem]
}
