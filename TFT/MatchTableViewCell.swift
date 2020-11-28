//
//  MatchTableViewCell.swift
//  TFT
//
//  Created by 桑染 on 2020-06-14.
//  Copyright © 2020 Rick. All rights reserved.
//

import UIKit

class MatchTableViewCell: UITableViewCell {
    
    // create unitImageViews
    var unitImageView0 = UnitImageView(image: nil)
    var unitImageView1 = UnitImageView(image: nil)
    var unitImageView2 = UnitImageView(image: nil)
    var unitImageView3 = UnitImageView(image: nil)
    var unitImageView4 = UnitImageView(image: nil)
    var unitImageView5 = UnitImageView(image: nil)
    var unitImageView6 = UnitImageView(image: nil)
    var unitImageView7 = UnitImageView(image: nil)
    var unitImageView8 = UnitImageView(image: nil)
    var unitImageView9 = UnitImageView(image: nil)
    var unitImageView10 = UnitImageView(image: nil)
    var unitImageView11 = UnitImageView(image: nil)
    
    // create starImageView
    var starImageView0 = StarImageVIew(image: nil)
    var starImageView1 = StarImageVIew(image: nil)
    var starImageView2 = StarImageVIew(image: nil)
    var starImageView3 = StarImageVIew(image: nil)
    var starImageView4 = StarImageVIew(image: nil)
    var starImageView5 = StarImageVIew(image: nil)
    var starImageView6 = StarImageVIew(image: nil)
    var starImageView7 = StarImageVIew(image: nil)
    var starImageView8 = StarImageVIew(image: nil)
    var starImageView9 = StarImageVIew(image: nil)
    var starImageView10 = StarImageVIew(image: nil)
    var starImageView11 = StarImageVIew(image: nil)
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .fillEqually
        return sv
    }()
    
    let stackView1: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 10
        return sv
    }()
    
    let stackView2: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 10
        return sv
    }()
    
    let traitStackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 10
        return sv
    }()
    
    let placementLabel: UILabel = {
        let pl = UILabel()
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.backgroundColor = .gray
        pl.textColor = .white
        pl.textAlignment = .center
        return pl
    }()
    
    // create itemsImageViews
    var itemsImageView0 = ItemImageView(image: nil)
    var itemsImageView1 = ItemImageView(image: nil)
    var itemsImageView2 = ItemImageView(image: nil)
    var itemsImageView3 = ItemImageView(image: nil)
    var itemsImageView4 = ItemImageView(image: nil)
    var itemsImageView5 = ItemImageView(image: nil)
    var itemsImageView6 = ItemImageView(image: nil)
    var itemsImageView7 = ItemImageView(image: nil)
    var itemsImageView8 = ItemImageView(image: nil)
    var itemsImageView9 = ItemImageView(image: nil)
    var itemsImageView10 = ItemImageView(image: nil)
    var itemsImageView11 = ItemImageView(image: nil)
    var itemsImageView12 = ItemImageView(image: nil)
    var itemsImageView13 = ItemImageView(image: nil)
    var itemsImageView14 = ItemImageView(image: nil)
    var itemsImageView15 = ItemImageView(image: nil)
    var itemsImageView16 = ItemImageView(image: nil)
    var itemsImageView17 = ItemImageView(image: nil)
    var itemsImageView18 = ItemImageView(image: nil)
    var itemsImageView19 = ItemImageView(image: nil)
    var itemsImageView20 = ItemImageView(image: nil)
    var itemsImageView21 = ItemImageView(image: nil)
    var itemsImageView22 = ItemImageView(image: nil)
    var itemsImageView23 = ItemImageView(image: nil)
    var itemsImageView24 = ItemImageView(image: nil)
    var itemsImageView25 = ItemImageView(image: nil)
    var itemsImageView26 = ItemImageView(image: nil)
    var itemsImageView27 = ItemImageView(image: nil)
    var itemsImageView28 = ItemImageView(image: nil)
    var itemsImageView29 = ItemImageView(image: nil)
    var itemsImageView30 = ItemImageView(image: nil)
    var itemsImageView31 = ItemImageView(image: nil)
    var itemsImageView32 = ItemImageView(image: nil)
    var itemsImageView33 = ItemImageView(image: nil)
    var itemsImageView34 = ItemImageView(image: nil)
    var itemsImageView35 = ItemImageView(image: nil)
    
    // create unitStackView
    let unitStackView0: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()
    
    let unitStackView1: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView2: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView3: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView4: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView5: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView6: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView7: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView8: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView9: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView10: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()

    let unitStackView11: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalCentering
        sv.spacing = 2
        return sv
    }()
    
    // create itemStackVIew
    let itemStackView0: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        return tv
    }()
    
    let itemStackView1: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView2: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView3: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView4: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView5: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView6: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView7: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView8: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView9: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView10: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()

    let itemStackView11: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalCentering
        tv.spacing = 1
        return tv
    }()
    
    let infoStackView: UIStackView = {
        let tv = UIStackView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.axis = .horizontal
        tv.alignment = .center
        tv.distribution = .equalSpacing
        return tv
    }()
    
    let matchType: UILabel = {
        let ul = UILabel()
        ul.translatesAutoresizingMaskIntoConstraints = false
        ul.font = ul.font.withSize(15)
        return ul
    }()
    
    let gameLength: UILabel = {
        let ul = UILabel()
        ul.translatesAutoresizingMaskIntoConstraints = false
        ul.font = ul.font.withSize(15)
        return ul
    }()
    
    let gameDate: UILabel = {
        let ul = UILabel()
        ul.translatesAutoresizingMaskIntoConstraints = false
        ul.font = ul.font.withSize(15)
        return ul
    }()
    
    let gameVariation: UILabel = {
        let ul = UILabel()
        ul.translatesAutoresizingMaskIntoConstraints = false
        ul.font = ul.font.withSize(15)
        return ul
    }()
    
    let traitImageView0 = TraitImageView(image: nil)
    let traitImageView1 = TraitImageView(image: nil)
    let traitImageView2 = TraitImageView(image: nil)
    let traitImageView3 = TraitImageView(image: nil)
    let traitImageView4 = TraitImageView(image: nil)
    let traitImageView5 = TraitImageView(image: nil)
    let traitImageView6 = TraitImageView(image: nil)
    let traitImageView7 = TraitImageView(image: nil)
    let traitImageView8 = TraitImageView(image: nil)
    let traitImageView9 = TraitImageView(image: nil)
    
    var imageViews = [UIImageView]()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.layer.masksToBounds = true
        self.contentView.clipsToBounds = true
        
        contentView.addSubview(infoStackView)
        contentView.addSubview(traitStackView)
        contentView.addSubview(stackView)
        contentView.addSubview(placementLabel)
        
        stackView.addArrangedSubview(stackView1)
        stackView.addArrangedSubview(stackView2)
        
        unitStackView0.addArrangedSubview(starImageView0)
        unitStackView0.addArrangedSubview(unitImageView0)
        unitStackView0.addArrangedSubview(itemStackView0)
        itemStackView0.addArrangedSubview(itemsImageView0)
        itemStackView0.addArrangedSubview(itemsImageView1)
        itemStackView0.addArrangedSubview(itemsImageView2)
        
        unitStackView1.addArrangedSubview(starImageView1)
        unitStackView1.addArrangedSubview(unitImageView1)
        unitStackView1.addArrangedSubview(itemStackView1)
        itemStackView1.addArrangedSubview(itemsImageView3)
        itemStackView1.addArrangedSubview(itemsImageView4)
        itemStackView1.addArrangedSubview(itemsImageView5)

        unitStackView2.addArrangedSubview(starImageView2)
        unitStackView2.addArrangedSubview(unitImageView2)
        unitStackView2.addArrangedSubview(itemStackView2)
        itemStackView2.addArrangedSubview(itemsImageView6)
        itemStackView2.addArrangedSubview(itemsImageView7)
        itemStackView2.addArrangedSubview(itemsImageView8)

        unitStackView3.addArrangedSubview(starImageView3)
        unitStackView3.addArrangedSubview(unitImageView3)
        unitStackView3.addArrangedSubview(itemStackView3)
        itemStackView3.addArrangedSubview(itemsImageView9)
        itemStackView3.addArrangedSubview(itemsImageView10)
        itemStackView3.addArrangedSubview(itemsImageView11)

        unitStackView4.addArrangedSubview(starImageView4)
        unitStackView4.addArrangedSubview(unitImageView4)
        unitStackView4.addArrangedSubview(itemStackView4)
        itemStackView4.addArrangedSubview(itemsImageView12)
        itemStackView4.addArrangedSubview(itemsImageView13)
        itemStackView4.addArrangedSubview(itemsImageView14)

        unitStackView5.addArrangedSubview(starImageView5)
        unitStackView5.addArrangedSubview(unitImageView5)
        unitStackView5.addArrangedSubview(itemStackView5)
        itemStackView5.addArrangedSubview(itemsImageView15)
        itemStackView5.addArrangedSubview(itemsImageView16)
        itemStackView5.addArrangedSubview(itemsImageView17)

        unitStackView6.addArrangedSubview(starImageView6)
        unitStackView6.addArrangedSubview(unitImageView6)
        unitStackView6.addArrangedSubview(itemStackView6)
        itemStackView6.addArrangedSubview(itemsImageView18)
        itemStackView6.addArrangedSubview(itemsImageView19)
        itemStackView6.addArrangedSubview(itemsImageView20)

        unitStackView7.addArrangedSubview(starImageView7)
        unitStackView7.addArrangedSubview(unitImageView7)
        unitStackView7.addArrangedSubview(itemStackView7)
        itemStackView7.addArrangedSubview(itemsImageView21)
        itemStackView7.addArrangedSubview(itemsImageView22)
        itemStackView7.addArrangedSubview(itemsImageView23)

        unitStackView8.addArrangedSubview(starImageView8)
        unitStackView8.addArrangedSubview(unitImageView8)
        unitStackView8.addArrangedSubview(itemStackView8)
        itemStackView8.addArrangedSubview(itemsImageView24)
        itemStackView8.addArrangedSubview(itemsImageView25)
        itemStackView8.addArrangedSubview(itemsImageView26)

        unitStackView9.addArrangedSubview(starImageView9)
        unitStackView9.addArrangedSubview(unitImageView9)
        unitStackView9.addArrangedSubview(itemStackView9)
        itemStackView9.addArrangedSubview(itemsImageView27)
        itemStackView9.addArrangedSubview(itemsImageView28)
        itemStackView9.addArrangedSubview(itemsImageView29)

        unitStackView10.addArrangedSubview(starImageView10)
        unitStackView10.addArrangedSubview(unitImageView10)
        unitStackView10.addArrangedSubview(itemStackView10)
        itemStackView10.addArrangedSubview(itemsImageView30)
        itemStackView10.addArrangedSubview(itemsImageView31)
        itemStackView10.addArrangedSubview(itemsImageView32)

        unitStackView11.addArrangedSubview(starImageView11)
        unitStackView11.addArrangedSubview(unitImageView11)
        unitStackView11.addArrangedSubview(itemStackView11)
        itemStackView11.addArrangedSubview(itemsImageView33)
        itemStackView11.addArrangedSubview(itemsImageView34)
        itemStackView11.addArrangedSubview(itemsImageView35)
        
        stackView1.addArrangedSubview(unitStackView0)
        stackView1.addArrangedSubview(unitStackView1)
        stackView1.addArrangedSubview(unitStackView2)
        stackView1.addArrangedSubview(unitStackView3)
        stackView1.addArrangedSubview(unitStackView4)
        stackView1.addArrangedSubview(unitStackView5)
        stackView2.addArrangedSubview(unitStackView6)
        stackView2.addArrangedSubview(unitStackView7)
        stackView2.addArrangedSubview(unitStackView8)
        stackView2.addArrangedSubview(unitStackView9)
        stackView2.addArrangedSubview(unitStackView10)
        stackView2.addArrangedSubview(unitStackView11)
        traitStackView.addArrangedSubview(traitImageView0)
        traitStackView.addArrangedSubview(traitImageView1)
        traitStackView.addArrangedSubview(traitImageView2)
        traitStackView.addArrangedSubview(traitImageView3)
        traitStackView.addArrangedSubview(traitImageView4)
        traitStackView.addArrangedSubview(traitImageView5)
        traitStackView.addArrangedSubview(traitImageView6)
        traitStackView.addArrangedSubview(traitImageView7)
        traitStackView.addArrangedSubview(traitImageView8)
        infoStackView.addArrangedSubview(matchType)
        infoStackView.addArrangedSubview(gameLength)
        infoStackView.addArrangedSubview(gameDate)
        infoStackView.addArrangedSubview(gameVariation)
        
        NSLayoutConstraint.activate([
            infoStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            infoStackView.leadingAnchor.constraint(equalTo: placementLabel.trailingAnchor, constant: 40),
            infoStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -200),
            
            traitStackView.topAnchor.constraint(equalTo: infoStackView.bottomAnchor, constant: 5),
            traitStackView.leadingAnchor.constraint(equalTo: placementLabel.trailingAnchor, constant: 40),
            traitStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            stackView.topAnchor.constraint(equalTo: traitStackView.bottomAnchor, constant: 5),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            stackView.leadingAnchor.constraint(equalTo: placementLabel.trailingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            placementLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 2),
            placementLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -2),
            placementLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            placementLabel.widthAnchor.constraint(equalToConstant: 25)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
