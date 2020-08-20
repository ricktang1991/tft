//
//  MatchHistory.swift
//  TFT
//
//  Created by 桑染 on 2020-06-13.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

struct Summoner: Decodable {
    var puuid: String
    var name: String
    var summonerLevel: Int
}

struct Match: Decodable {
    var metadata: MetaData
    var info: Info
}

struct MetaData: Decodable {
    var data_version: String
    var match_id: String
    var participants: [String]
}

struct Info: Decodable {
    var game_datetime: Double
    var game_variation: String
    var participants: [Participant]
    var queue_id: Int
    var tft_set_number: Int
}

struct Participant: Decodable {
    var gold_left: Int
    var last_round: Int
    var level: Int
    var placement: Int
    var puuid: String
    var time_eliminated: Float64
    var total_damage_to_players: Int
    var traits: [Trait]
    var units: [Unit]
}

struct Trait: Decodable {
    var name: String
    var num_units: Int
    var style: Int
    var tier_current: Int
    var tier_total: Int?
}

struct Unit: Decodable {
    var character_id: String
    var items: [Int]
    var rarity: Int
    var tier: Int
}
