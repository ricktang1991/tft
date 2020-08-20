//
//  ApiKey.swift
//  TFT
//
//  Created by 桑染 on 2020-08-20.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func valueForAPIKey(named keyname: String) -> String {
    let filePath = Bundle.main.path(forResource: "ApiKey", ofType: "plist")
    let plist = NSDictionary(contentsOfFile: filePath!)
    let value = plist?.object(forKey: keyname) as! String
    return value
}
