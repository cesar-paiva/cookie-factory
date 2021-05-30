//
//  CookieTests.swift
//  CookieFactoryTests
//
//  Created by Cesar Paiva on 05/11/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import XCTest

@testable import CookieFactory

class CookieTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInit_GingerbreadCookieType_DoesNotReturnNil() {
        
        let cookie = Cookie(.gingerbread)
        
        XCTAssertNotNil(cookie)
    }
    
    func testInit_ShortbreadCookieType_DoesNotReturnNil() {
        
        let cookie = Cookie(.shortbread)
        
        XCTAssertNotNil(cookie)
    }
    
    func testInit_ChocolateChipCookieType_DoesNotReturnNil() {
        
        let cookie = Cookie(.chocolateChip)
        
        XCTAssertNotNil(cookie)
    }
    
    func testInit_GingerbreadCookieType_SetsCookieTypeVarCorrectly() {
        
        let cookie = Cookie(.gingerbread)
        
        XCTAssertEqual(cookie.type, CookieType.gingerbread)
    }
    
    func testInit_ShortbreadCookieType_SetsCookieTypeVarCorrectly() {
        
        let cookie = Cookie(.shortbread)
        
        XCTAssertEqual(cookie.type, CookieType.shortbread)
    }
    
    func testInit_ChocolateChip_SetsCookieTypeVarCorrectly() {
        
        let cookie = Cookie(.chocolateChip)
        
        XCTAssertEqual(cookie.type, CookieType.chocolateChip)
    }
    
}
