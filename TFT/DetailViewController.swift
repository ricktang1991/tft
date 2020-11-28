//
//  DetailViewController.swift
//  TFT
//
//  Created by 桑染 on 2020-07-03.
//  Copyright © 2020 Rick. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var match: Match?
    
    var traitsModel: [Traits] = Traits.traits()
    
    let tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.rowHeight = 100
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        overrideUserInterfaceStyle = .light
        navigationItem.title = "Match Detail"
        tableView.rowHeight = 200
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MatchTableViewCell.self, forCellReuseIdentifier: "Cell")
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return match?.info.participants.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sort = match?.info.participants.sorted { (a, b) -> Bool in
            a.placement < b.placement
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MatchTableViewCell
        if let sortedPlayers = sort {
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
            
            cell.placementLabel.text = "#\(sortedPlayers[indexPath.row].placement)"
            if sortedPlayers[indexPath.row].placement == 1 {
                cell.placementLabel.backgroundColor = .systemGreen
            } else if sortedPlayers[indexPath.row].placement < 5 {
                cell.placementLabel.backgroundColor = .systemBlue
            } else {
                cell.placementLabel.backgroundColor = .systemGray
            }
            
            for trait in sortedPlayers[indexPath.row].traits {
                for traitModel in traitsModel {
                    if trait.name == traitModel.key && trait.style > 0 {
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
            
            
            
            for i in 0..<sortedPlayers[indexPath.row].units.count {
                let originalImage = UIImage(named: "\(sortedPlayers[indexPath.row].units[i].character_id)")
                var color = UIColor()
                
                starImages[i].image = UIImage(named: "cost\(sortedPlayers[indexPath.row].units[i].rarity + 1)_stars\(sortedPlayers[indexPath.row].units[i].tier)")
                
                switch sortedPlayers[indexPath.row].units[i].rarity {
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
                if !sortedPlayers[indexPath.row].units[i].items.isEmpty {
                    var z = i * 3
                    for j in 0..<sortedPlayers[indexPath.row].units[i].items.count {
                        itemImages[z].image = UIImage(named: "\(String(describing: sortedPlayers[indexPath.row].units[i].items[j]))")
                        z += 1
                    }
                }
            }
        }
        return cell
    }
}

