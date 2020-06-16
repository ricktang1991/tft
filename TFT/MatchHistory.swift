//
//  MatchHistory.swift
//  TFT
//
//  Created by 桑染 on 2020-06-13.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

// Summoner struct
struct Summoner: Decodable {
    var puuid: String
    var name: String
    var summonerLevel: Int
}



// Match detail struct
struct Match: Decodable {
    var metadata: MetaData
    var info: Info
}

struct MetaData: Decodable {
    var participants: [String]
}

struct Info: Decodable {
    var game_datetime: CLong
    var participants: [Participant]
}

struct Participant: Decodable {
    var gold_left: Int
    var last_round: Int
    var level: Int
    var placement: Int
    var puuid: String
    var total_damage_to_players: Int
    var traits: [Trait]
    var units: [Unit]
}

struct Trait: Decodable {
    var name: String
    var num_units: Int
    var tier_current: Int
    var tier_total: Int?
}

struct Unit: Decodable {
    var character_id: String
    var items: [Int]
    var rarity: Int
    var tier: Int
}
