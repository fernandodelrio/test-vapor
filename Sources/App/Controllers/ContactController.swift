//
//  ContactController.swift
//  App
//
//  Created by Fernando Henrique Bonfim Moreno Del Rio on 15/08/2018.
//

import Vapor

final class ContactController {
    func get(_ req: Request) throws -> Future<[Contact]> {
        return Contact.query(on: req).all()
    }
    
    func post(_ req: Request) throws -> Future<Contact> {
        return try req.content.decode(Contact.self).flatMap { contact in
            return contact.save(on: req)
        }
    }
}
