//
//  CookieManager.swift
//  CookieFactory
//
//  Created by Cesar Paiva on 06/11/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import Foundation

class CookieManager {
    
    var gingerbreadCookies: [Cookie]?
    var shortbreadCookies: [Cookie]?
    var chocolateChipCookies: [Cookie]?
    
    init() {
        
        self.gingerbreadCookies = [Cookie]()
        self.shortbreadCookies = [Cookie]()
        self.chocolateChipCookies = [Cookie]()
    }
    
    func addGingerbreadCookie() {
        
        let gingerbreadCookie = Cookie(.gingerbread)
        
        gingerbreadCookies?.append(gingerbreadCookie)
    }
    
    func addShortbreadCookie() {
        
        let shortbreadCookie = Cookie(.shortbread)
        
        shortbreadCookies?.append(shortbreadCookie)
    }
    
    func addChocolateChipCookie() {
        
        let chocolateChipCookie = Cookie(.chocolateChip)
        
        chocolateChipCookies?.append(chocolateChipCookie)
    }
    
    func reset() {
        gingerbreadCookies?.removeAll()
        shortbreadCookies?.removeAll()
        chocolateChipCookies?.removeAll()
    }
}
