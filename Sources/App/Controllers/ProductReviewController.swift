//
//  File.swift
//  
//
//  Created by Дима Давыдов on 02.07.2021.
//

import Foundation
import Vapor

class ProductReviewController {
    func create(_ req: Request) throws -> EventLoopFuture<ResultResponse> {
        guard let body = try? req.content.decode(CreateProductReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ResultResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
    func getList(_ req: Request) throws -> EventLoopFuture<ProductReviewModelCollection> {
        let response = [
            ProductReviewModel(id_comment: 1, id_user: 1, text: "hui")
        ]
        
        return req.eventLoop.future(response)
    }
    
    func approve(_ req: Request) throws -> EventLoopFuture<ResultResponse> {
        guard let body = try? req.content.decode(ApproveProductReviewReqiest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = ResultResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
    func delete(_ req: Request) throws -> EventLoopFuture<ResultResponse> {
        guard let body = try? req.content.decode(RemoveProductReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ResultResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
    }
}
