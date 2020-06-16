//
//  MatchTableViewCell.swift
//  TFT
//
//  Created by 桑染 on 2020-06-14.
//  Copyright © 2020 Rick. All rights reserved.
//

import UIKit

class MatchTableViewCell: UITableViewCell {
    
    let unitImageView0: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let unitImageView1: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView2: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView3: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView4: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView5: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView6: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView7: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView8: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView9: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView10: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let unitImageView11: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 42).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let starImageView0: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let starImageView1: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView2: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView3: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView4: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView5: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView6: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView7: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView8: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView9: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView10: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let starImageView11: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 42).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
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
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .fillEqually
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
    
    let itemsImageView0: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let itemsImageView1: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let itemsImageView2: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let itemsImageView3: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView4: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView5: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView6: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView7: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView8: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView9: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView10: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView11: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView12: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView13: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView14: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView15: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView16: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView17: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView18: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView19: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView20: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView21: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView22: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView23: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView24: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView25: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView26: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView27: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView28: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView29: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView30: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView31: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView32: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView33: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView34: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let itemsImageView35: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 13).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 13).isActive = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
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
    
    var imageViews = [UIImageView]()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
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
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
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
