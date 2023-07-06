//
//  UserModel.swift
//  TestNubelity
//
//  Created by Alan Benavides Lira on 27/06/23.
//

import Foundation

struct UserResponse: Decodable {
    let results: [UserResults]
}

struct UserResults: Decodable {
    let name: UserName
    let picture: UserPicture
}

struct UserName: Decodable {
    let title: String
    let first: String
    let last: String
}
extension UserName {
    func fullName() -> String {
        return "\(first) \(last)"
    }
}

struct UserPicture: Decodable {
    let large: String
    let medium: String
    let thumbnail: String
}
