//
//  MatchHistoryRequest.swift
//  TFT
//
//  Created by 桑染 on 2020-06-13.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

let API_KEY = "RGAPI-1e7cd3a5-6d70-48c8-8de1-c4db12caea99"


struct SummonerRequest {
    let resourceURL: URL
    
    init(summonerName: String) {
        let resourceString = "https://na1.api.riotgames.com/tft/summoner/v1/summoners/by-name/\(summonerName)?api_key=\(API_KEY)"
        guard let resourceURL = URL(string: resourceString) else { fatalError() }
        
        self.resourceURL = resourceURL
    }
    
    func getSummoner(completion: @escaping (Result<Summoner, Error>) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, response, error in
            guard let jsonData = data else {
                completion(.failure(error!))
                return
            }
        
            do {
                let decoder = JSONDecoder()
                let summonerResponse = try decoder.decode(Summoner.self, from: jsonData)
                completion(.success(summonerResponse))
            } catch {
                completion(.failure(error))
            }
        }
        dataTask.resume()
    }
}


struct MatchHistoryRequest: Decodable {
    let resourceURL: URL
    
    init(summonerPuuid: String) {
        let resourceString = "https://americas.api.riotgames.com/tft/match/v1/matches/by-puuid/\(summonerPuuid)/ids?count=8&api_key=\(API_KEY)"
        guard let resourceURL = URL(string: resourceString) else { fatalError() }
        
        self.resourceURL = resourceURL
    }
    
    func getMatchHistory(completion: @escaping (Result<[String], Error>) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, response, error in
            guard let jsonData = data else {
                completion(.failure(error!))
                return
            }
        
            do {
                let decoder = JSONDecoder()
                let matchHistoryResponse = try decoder.decode([String].self, from: jsonData)
                completion(.success(matchHistoryResponse))
            } catch {
                completion(.failure(error))
            }
        }
        dataTask.resume()
    }
}

struct MatchDetailRequest: Decodable {
    let resourceURL: URL
    
    init(matchID: String) {
        let resourceString = "https://americas.api.riotgames.com/tft/match/v1/matches/\(matchID)?api_key=\(API_KEY)"
        guard let resourceURL = URL(string: resourceString) else { fatalError() }
        
        self.resourceURL = resourceURL
    }
    
    func getMatchDetail(completion: @escaping (Result<Match, Error>) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: resourceURL) { data, response, error in
            guard let jsonData = data else {
                completion(.failure(error!))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let matchDetailResponse = try decoder.decode(Match.self, from: jsonData)
                completion(.success(matchDetailResponse))
            } catch {
                completion(.failure(error))
            }
        }
        dataTask.resume()
    }
}
