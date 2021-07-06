//
//  File.swift
//  
//
//  Created by Дима Давыдов on 06.07.2021.
//

import Foundation
import Vapor

struct BasketRemoveRequest: Content {
    let id_product: Int
}
