//
//  File.swift
//  
//
//  Created by Дима Давыдов on 06.07.2021.
//

import Foundation
import Vapor

class BasketController {
    func add(_ req: Request) throws -> EventLoopFuture<ResultResponse> {
        guard let body = try? req.content.decode(BasketAddRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        let response = ResultResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
    func remove(_ req: Request) throws -> EventLoopFuture<ResultResponse> {
        guard let body = try? req.content.decode(BasketRemoveRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        let response = ResultResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
    }
}
