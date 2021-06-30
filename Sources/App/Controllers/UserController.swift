//
//  File.swift
//  
//
//  Created by Дима Давыдов on 28.06.2021.
//

import Foundation
import Vapor

class UserController {
    func create(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RegisterResponse(
            result: 1,
            user_message: "Регистрация прошла успешно!",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func update(_ req: Request) throws -> EventLoopFuture<ResultResponse> {
        
        guard let body = try? req.content.decode(UpdateUserRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ResultResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<ResultResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ResultResponse(result: 1, errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
    func auth(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LoginResponse(
            result: 1,
            errorMessage: nil,
            user: User(
                id_user: 123,
                user_login: "user_login",
                user_name: "user_name",
                user_lastname: "user_lastname"
            ),
            authToken: "some_auth_token"
        )
        
        return req.eventLoop.future(response)
    }
}
