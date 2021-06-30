//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

class ProductController {
    func all(_ req: Request) throws -> EventLoopFuture<ProductCollectionResponse> {
        guard let body = try? req.content.decode(ProductCollectionRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ProductCollectionResponse(page_number: 1, products: [
            ProductCollectionProductItem(id_product: 1, product_name: "product 1", price: 100),
            ProductCollectionProductItem(id_product: 2, product_name: "product 2", price: 200),
            ProductCollectionProductItem(id_product: 3, product_name: "product 3", price: 300),
            ProductCollectionProductItem(id_product: 4, product_name: "product 4", price: 400),
        ])
        
        return req.eventLoop.future(response)
    }
    
    func one(_ req: Request) throws -> EventLoopFuture<ProductItemResponse> {
        guard let body = try? req.content.decode(ProductItemRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ProductItemResponse(
            result: 1,
            product_name: "product 1",
            product_price: 100,
            product_description: "fucking good product you should buy right now"
        )
        
        return req.eventLoop.future(response)
    }
}
