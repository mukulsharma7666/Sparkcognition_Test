//
//  MainModel.swift
//  TestApp
//
//  Created by mukul Sharma on 02/09/22.
//

import Foundation


struct MainModel: Codable {
    let abv, ibu: String?
    let id: Int?
    let name, style: String?
    let ounces: Int?
    
    enum CodingKeys: String, CodingKey {
        case id = "userId"
        case abv, ibu,name,style
        case ounces

    }
}



