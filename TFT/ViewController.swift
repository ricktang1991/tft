//
//  ViewController.swift
//  TFT
//
//  Created by 桑染 on 2020-06-13.
//  Copyright © 2020 Rick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var summonerInfo: Summoner? {
        didSet {
            DispatchQueue.main.async {
                self.fetchMatchHistory()
            }
        }
    }
    
    var listOfMatchHistories = [String]() {
        didSet {
            DispatchQueue.main.async {
                self.fetchMatchDetail()
            }
        }
    }
    
    var matches = [Match]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    let textFiled: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = .gray
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 2))
        tf.leftView =  leftView
        tf.leftViewMode = .always
        return tf
    }()
    
    let searchButton: UIButton = {
        let sb = UIButton()
        sb.translatesAutoresizingMaskIntoConstraints = false
        sb.setTitle("Search", for: .normal)
        sb.backgroundColor = .gray
        return sb
    }()
    
    let tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.rowHeight = 100
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textFiled)
        view.addSubview(searchButton)
        view.addSubview(tableView)
        tableView.rowHeight = 200
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MatchTableViewCell.self, forCellReuseIdentifier: "Cell")
        searchButton.addTarget(self, action: #selector(search), for: .touchDown)
        
        NSLayoutConstraint.activate([
            textFiled.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFiled.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            textFiled.heightAnchor.constraint(equalToConstant: 40),
            textFiled.widthAnchor.constraint(equalToConstant: 200),
            
            searchButton.topAnchor.constraint(equalTo: textFiled.bottomAnchor, constant: 20),
            searchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchButton.widthAnchor.constraint(equalToConstant: 100),
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            
            tableView.topAnchor.constraint(equalTo: searchButton.bottomAnchor, constant: 20),
            tableView.widthAnchor.constraint(equalTo: view.widthAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    @objc func search(sender: UIButton) {
        let summonerRequest = SummonerRequest(summonerName: (textFiled.text)!)
        matches = [Match]()
        summonerRequest.getSummoner { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let summoner):
                self?.summonerInfo = summoner
            }
        }
    }
    
    func fetchMatchHistory() {
        let matchHistoryRequest = MatchHistoryRequest(summonerPuuid: summonerInfo!.puuid)
        matchHistoryRequest.getMatchHistory { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let string):
                self?.listOfMatchHistories = string
            }
        }
    }
    
    func fetchMatchDetail() {
        self.matches.removeAll()
        for i in 0..<listOfMatchHistories.count {
            let matchDetailRequest = MatchDetailRequest(matchID: listOfMatchHistories[i])
            matchDetailRequest.getMatchDetail { [weak self] result in
                switch result {
                case .failure(let error):
                    print(error)
                case .success(let match):
                    self?.matches.append(match)
                    self?.matches.sort { (a, b) -> Bool in
                        a.info.game_datetime > b.info.game_datetime
                    }
                }
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MatchTableViewCell
        cell.placementLabel.textColor = .white
        
        var unitImages = [UIImageView]()
        var itemImages = [UIImageView]()
        var starImages = [UIImageView]()
        
        unitImages.append(contentsOf: [cell.unitImageView0, cell.unitImageView1, cell.unitImageView2, cell.unitImageView3, cell.unitImageView4, cell.unitImageView5, cell.unitImageView6, cell.unitImageView7, cell.unitImageView8, cell.unitImageView9, cell.unitImageView10, cell.unitImageView11])

        itemImages.append(contentsOf: [cell.itemsImageView0, cell.itemsImageView1, cell.itemsImageView2, cell.itemsImageView3, cell.itemsImageView4, cell.itemsImageView5, cell.itemsImageView6, cell.itemsImageView7, cell.itemsImageView8, cell.itemsImageView9, cell.itemsImageView10, cell.itemsImageView11, cell.itemsImageView12, cell.itemsImageView13, cell.itemsImageView14, cell.itemsImageView15, cell.itemsImageView16, cell.itemsImageView17, cell.itemsImageView18, cell.itemsImageView19, cell.itemsImageView20, cell.itemsImageView21, cell.itemsImageView22, cell.itemsImageView23, cell.itemsImageView24, cell.itemsImageView25, cell.itemsImageView26, cell.itemsImageView27, cell.itemsImageView28, cell.itemsImageView29, cell.itemsImageView30, cell.itemsImageView31, cell.itemsImageView32, cell.itemsImageView33, cell.itemsImageView34, cell.itemsImageView35])
        
        starImages.append(contentsOf: [cell.starImageView0, cell.starImageView1, cell.starImageView2, cell.starImageView3, cell.starImageView4, cell.starImageView5, cell.starImageView6, cell.starImageView7, cell.starImageView8, cell.starImageView9, cell.starImageView10, cell.starImageView11])
        
        for id in matches[indexPath.row].info.participants {
            if id.puuid == summonerInfo?.puuid {
                cell.placementLabel.text = "#\(id.placement)"
                if id.placement == 1 {
                    cell.placementLabel.backgroundColor = .systemGreen
                } else if id.placement < 5 {
                    cell.placementLabel.backgroundColor = .systemBlue
                } else {
                    cell.placementLabel.backgroundColor = .systemGray
                }
                for i in 0..<id.units.count {
                    let originalImage = UIImage(named: "\(id.units[i].character_id)")
                    var color = UIColor()
                    
                    starImages[i].image = UIImage(named: "cost\(id.units[i].rarity + 1)_stars\(id.units[i].tier)")
                    
                    switch id.units[i].rarity {
                    case 0:
                        color = UIColor.darkGray
                    case 1:
                        color = UIColor.systemGreen
                    case 2:
                        color = UIColor.systemBlue
                    case 3:
                        color = UIColor.systemPurple
                    case 4:
                        color = UIColor.systemOrange
                    default:
                        fatalError()
                    }
                    unitImages[i].image = originalImage?.imageWithBorder(width: 8, color: color)
                    if !id.units[i].items.isEmpty {
                        var z = i * 3
                        for j in 0..<id.units[i].items.count {
                            itemImages[z].image = UIImage(named: "\(String(describing: id.units[i].items[j]))")
                            z += 1
                        }
                    }
                }
            }
        }
        return cell
    }
}

extension UIImage {
    func imageWithBorder(width: CGFloat, color: UIColor) -> UIImage? {
        let square = CGSize(width: min(size.width, size.height) + width * 2, height: min(size.width, size.height) + width * 2)
        let imageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: square))
        imageView.contentMode = .center
        imageView.image = self
        imageView.layer.borderWidth = width
        imageView.layer.borderColor = color.cgColor
        UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        imageView.layer.render(in: context)
        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return result
    }
}

