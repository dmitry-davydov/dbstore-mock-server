//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

struct ProductCollectionRequest: Content {
    let page_number: Int
    let id_category: Int
}
