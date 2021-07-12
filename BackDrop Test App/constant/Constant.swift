//
//  Constant.swift
//  BackDrop Test App
//
//  Created by MBUSER on 05/07/2021.
//

import Foundation

struct  Domain {
    static let dogUrl  = "https://api.thedogapi.com/v1/breeds?"  //limit=20&page=2&
    static let catUrl = "https://api.thecatapi.com/v1/breeds?"
   
}
extension Domain {
    func setCatUrl() -> String {
        return Domain.catUrl
    }
    func setDogUrl() -> String {
        return Domain.dogUrl
    }
}

struct ApiKeys {
    static let catKey = "&api_key=fee4aace-99b6-4b4f-9818-c5ae410fe1f7"
    static let dogKey = "&api_key=decdd7f2-f238-4ac1-b81b-8795d124fca3"
}
