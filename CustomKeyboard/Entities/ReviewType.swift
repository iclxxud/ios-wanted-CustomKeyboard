//
//  ReviewType.swift
//  CustomKeyboard
//
//  Created by oyat on 2022/07/12.
//

import Foundation

// MARK: - ReviewTypes
struct ReviewTypes: Codable {
    var data: [ReviewType]
}

// MARK: - ReviewType
struct ReviewType: Codable {
    var id: String
    var user: User
    var content: String
    var createdAt: String
    var updatedAt: String
    
    enum CodingKeys: String , CodingKey {
        case id = "_id"
        case user, content, createdAt, updatedAt
        
    }
}

// FIXME: 모델별로 파일 분리해주는게 좋아보여요. 위 두개는 같이 있어도 될거같은데 User은 따로 있는게 낫지않을까?하는 의견입니다~

// MARK: - User
struct User: Codable {
    var id: String
    var isAdmin: Bool
    var profileImage: String
    var userName: String
    
    enum CodingKeys : String , CodingKey {
        case id = "_id"
        case isAdmin, profileImage, userName
    }
}
