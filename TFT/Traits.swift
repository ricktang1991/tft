//
//  Traits.swift
//  TFT
//
//  Created by 桑染 on 2020-06-17.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

struct Traits: Decodable {
    var key: String
    var name: String
    var type: String
    var sets: [Set]
}

struct Set: Decodable {
    var style: String
    var min: Int
    var max: Int?
}

extension Traits {
    static func traits() -> [Traits] {
        guard
            let url = Bundle.main.url(forResource: "traits", withExtension: "json"),
            let data = try? Data(contentsOf: url)
            else { return [] }

        do {
            return try JSONDecoder().decode([Traits].self, from: data)
        } catch {
            return []
        }
    }
}


