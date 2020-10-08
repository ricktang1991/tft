//
//  ViewController.swift
//  TFT
//
//  Created by 桑染 on 2020-06-13.
//  Copyright © 2020 Rick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    var setNumber = 4
    
    var summonerInfo: Summoner?
    
    var listOfMatchHistories = [String]()
    
    var n = 0
    
    var matches = [Match]()
    
    let nameLabel: UILabel = {
        let nl = UILabel()
        nl.translatesAutoresizingMaskIntoConstraints = false
        nl.text = "TFT Book"
        nl.textColor = .white
        nl.font = UIFont.boldSystemFont(ofSize: 30)
        nl.textAlignment = .center
        return nl
    }()
    
    let textFiled: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = .white
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 2))
        tf.leftView =  leftView
        tf.leftViewMode = .always
        tf.layer.cornerRadius = 8
        tf.layer.masksToBounds = true
        tf.attributedPlaceholder = NSAttributedString(string: "Summoner Name", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15)])
        return tf
    }()
    
    let searchButton: UIButton = {
        let sb = UIButton()
        sb.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(systemName: "magnifyingglass")?.withTintColor(.orange, renderingMode: .alwaysOriginal)
        sb.setImage(image, for: .normal)
        return sb
    }()
    
    let tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.rowHeight = 100
        return tv
    }()
    
    var traitsModel: [Traits] = Traits.traits()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        navigationController?.navigationBar.barTintColor = .systemBlue
        navigationController?.navigationBar.tintColor = .white
        navigationItem.title = "Search"
        textFiled.delegate = self
        
        view.addSubview(nameLabel)
        view.addSubview(textFiled)
        view.addSubview(tableView)
        
        tableView.rowHeight = 200
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MatchTableViewCell.self, forCellReuseIdentifier: "Cell")
        searchButton.addTarget(self, action: #selector(search), for: .touchDown)
        textFiled.rightView = searchButton
        textFiled.rightViewMode = .always
        
        
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            nameLabel.widthAnchor.constraint(equalToConstant: 200),
            
            textFiled.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFiled.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            textFiled.heightAnchor.constraint(equalToConstant: 40),
            textFiled.widthAnchor.constraint(equalToConstant: 200),
            
            tableView.topAnchor.constraint(equalTo: textFiled.bottomAnchor, constant: 20),
            tableView.widthAnchor.constraint(equalTo: view.widthAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    @objc func search(sender: UIButton) {
        let summonerName = textFiled.text!
        let summoner = summonerName.filter { !$0.isWhitespace }
        let summonerRequest = SummonerRequest(summonerName: (summoner))
        matches = [Match]()
        summonerRequest.getSummoner { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let summoner):
                self?.summonerInfo = summoner
                DispatchQueue.main.async {
                    self?.fetchMatchHistory()
                }
            }
        }
        textFiled.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        search(sender: searchButton)
        self.view.endEditing(true)
        return false
    }
    
    func fetchMatchHistory() {
        let matchHistoryRequest = MatchHistoryRequest(summonerPuuid: summonerInfo!.puuid)
        matchHistoryRequest.getMatchHistory { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let string):
                self?.listOfMatchHistories = string
                DispatchQueue.main.async {
                    self?.fetchMatchDetail()
                }
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
                    if match.info.tft_set_number == self?.setNumber {
                        self?.matches.append(match)
                    }
                    self?.matches.sort { (a, b) -> Bool in
                        a.info.game_datetime > b.info.game_datetime
                    }
                    DispatchQueue.main.async {
                        self?.tableView.reloadData()
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
        var traitImages = [UIImageView]()
        var images = [UIImage]()
        
        unitImages.append(contentsOf: [cell.unitImageView0, cell.unitImageView1, cell.unitImageView2, cell.unitImageView3, cell.unitImageView4, cell.unitImageView5, cell.unitImageView6, cell.unitImageView7, cell.unitImageView8, cell.unitImageView9, cell.unitImageView10, cell.unitImageView11])

        itemImages.append(contentsOf: [cell.itemsImageView0, cell.itemsImageView1, cell.itemsImageView2, cell.itemsImageView3, cell.itemsImageView4, cell.itemsImageView5, cell.itemsImageView6, cell.itemsImageView7, cell.itemsImageView8, cell.itemsImageView9, cell.itemsImageView10, cell.itemsImageView11, cell.itemsImageView12, cell.itemsImageView13, cell.itemsImageView14, cell.itemsImageView15, cell.itemsImageView16, cell.itemsImageView17, cell.itemsImageView18, cell.itemsImageView19, cell.itemsImageView20, cell.itemsImageView21, cell.itemsImageView22, cell.itemsImageView23, cell.itemsImageView24, cell.itemsImageView25, cell.itemsImageView26, cell.itemsImageView27, cell.itemsImageView28, cell.itemsImageView29, cell.itemsImageView30, cell.itemsImageView31, cell.itemsImageView32, cell.itemsImageView33, cell.itemsImageView34, cell.itemsImageView35])
        
        starImages.append(contentsOf: [cell.starImageView0, cell.starImageView1, cell.starImageView2, cell.starImageView3, cell.starImageView4, cell.starImageView5, cell.starImageView6, cell.starImageView7, cell.starImageView8, cell.starImageView9, cell.starImageView10, cell.starImageView11])
        
        traitImages.append(contentsOf: [cell.traitImageView0, cell.traitImageView1, cell.traitImageView2, cell.traitImageView3, cell.traitImageView4, cell.traitImageView5, cell.traitImageView6, cell.traitImageView7, cell.traitImageView8])
        
        for i in unitImages {
            i.image = nil
        }
        for i in itemImages {
            i.image = nil
        }
        for i in starImages {
            i.image = nil
        }
        for i in traitImages {
            i.image = nil
        }
        images.removeAll()
        
        if matches[indexPath.row].info.queue_id == 1090 {
            cell.matchType.text = "Normal"
        } else {
            cell.matchType.text = "Rank"
        }
        
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
                
                let time = id.time_eliminated
                let minutes = Int(time) / 60 % 60
                let seconds = Int(time) % 60
                cell.gameLength.text = String(format:"%02i:%02i", minutes, seconds)
                
                for trait in id.traits {
                    for traitModel in traitsModel {
                        var temp = [String]()
                        if trait.name == traitModel.key && trait.style > 0 && !temp.contains(trait.name) {
                            temp.append(trait.name)
                            var bottomImage = UIImage()
                            switch trait.style {
                            case 1:
                                bottomImage = UIImage(named: "bronze")!
                            case 2:
                                bottomImage = UIImage(named: "silver")!
                            case 3:
                                bottomImage = UIImage(named: "gold")!
                            case 4:
                                bottomImage = UIImage(named: "chromatic")!
                            default:
                                fatalError()
                            }
                            let topImage = (UIImage(named: "trait_icon_\(traitModel.name.lowercased())"))?.withRenderingMode(.alwaysTemplate)
                            let newImage = bottomImage.mergeWith(topImage: topImage ?? UIImage(named: "trait_icon_sniper")!)
                            images.append(newImage)
                        }
                    }
                }
                
                for i in 0..<images.count {
                    traitImages[i].image = images[i]
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        detailVC.match = matches[indexPath.row]
        let cell = tableView.cellForRow(at: indexPath)
        cell?.isSelected = false
        navigationController?.pushViewController(detailVC, animated: true)
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

extension UIImage {
  func mergeWith(topImage: UIImage) -> UIImage {
    let bottomImage = self

    UIGraphicsBeginImageContext(size)

    let areaSize = CGRect(x: 0, y: 0, width: bottomImage.size.width, height: bottomImage.size.height)
    bottomImage.draw(in: areaSize)
    
    let newAreaSize = CGRect(x: 13, y: 13, width: bottomImage.size.width / 2, height: bottomImage.size.height / 2)

    topImage.draw(in: newAreaSize, blendMode: .normal, alpha: 1.0)

    let mergedImage = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return mergedImage
  }
}

