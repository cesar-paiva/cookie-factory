//
//  Cookie.swift
//  CookieFactory
//
//  Created by Cesar Paiva on 05/11/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import Foundation

enum CookieType {
    case gingerbread
    case shortbread
    case chocolateChip
}

class Cookie {
    
    var type: CookieType?
    
    init(_ type: CookieType) {
        self.type = type
    }
    
}
