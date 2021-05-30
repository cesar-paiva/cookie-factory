//
//  CookieManagerTests.swift
//  CookieFactoryTests
//
//  Created by Cesar Paiva on 05/11/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import XCTest

@testable import CookieFactory

class CookieManagerTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func testInit_GingerbreadCookieArray_IsNotNil() {
        
        let cookieController = CookieManager()
        
        XCTAssertNotNil(cookieController.gingerbreadCookies)
    }
    
    func testInit_ShortbreadCookieArray_IsNotNil() {
        
        let cookieController = CookieManager()
        
        XCTAssertNotNil(cookieController.shortbreadCookies)
    }
    
    func testInit_ChocolateChipCookieArray_IsNotNil() {
        
        let cookieController = CookieManager()
        
        XCTAssertNotNil(cookieController.chocolateChipCookies)
    }
    
    func testInit_GingerbreadCookiesCount_IsZero() {
        
        let cookieController = CookieManager()
        
        XCTAssertEqual(cookieController.gingerbreadCookies!.count, 0)
        
    }
    
    func testInit_ShortbreadCookiesCount_IsZero() {
        
        let cookieController = CookieManager()
        
        XCTAssertEqual(cookieController.shortbreadCookies!.count, 0)
        
    }
    
    func testInit_ChocolateChipCookiesCount_IsZero() {
        
        let cookieController = CookieManager()
        
        XCTAssertEqual(cookieController.chocolateChipCookies!.count, 0)
    }
    
    func testAddingGingerbreadCookie_Increments_NumberofGingerbreadCookies_ByOne() {
        
        let cookieController = CookieManager()
        let numberOfCookies = cookieController.gingerbreadCookies!.count
        
        cookieController.addGingerbreadCookie()
        
        let expectedNumberOfCookies = numberOfCookies + 1
        
        XCTAssertEqual(cookieController.gingerbreadCookies!.count, expectedNumberOfCookies)
    }
    
    func testAddGingerbreadCookie_DoesNotIncrement_NumberOfShortbreadCookies() {
        
        let cookie = CookieManager()
        let numberOfCookies = cookie.shortbreadCookies!.count
        
        cookie.addGingerbreadCookie()
        
        XCTAssertEqual(cookie.shortbreadCookies!.count, numberOfCookies)
    }
    
    func testAddGingerbreadCookie_DoesNotIncrement_NumberOfChocolatesChipCookies() {
        
        let cookie = CookieManager()
        let numberOfCookies = cookie.chocolateChipCookies!.count
        
        cookie.addGingerbreadCookie()
        
        XCTAssertEqual(cookie.chocolateChipCookies!.count, numberOfCookies)
    }
    
    func testAddShortbreadCookie_Increment_NumberOfShortCookies_ByOne() {
        
        let cookie = CookieManager()
        let numberOfCookies = cookie.shortbreadCookies!.count
        
        cookie.addShortbreadCookie()
        
        let expectedNumberOfCookies = numberOfCookies + 1
        
        XCTAssertEqual(cookie.shortbreadCookies!.count, expectedNumberOfCookies)
    }
    
    func testAddShortbreadCookie_DoesNotIncrement_NumberOfGingerbreadCookies() {
        
        let cookie = CookieManager()
        let numberOfCookies = cookie.gingerbreadCookies!.count
        
        cookie.addShortbreadCookie()
        
        XCTAssertEqual(cookie.gingerbreadCookies!.count, numberOfCookies)
    }
    
    func testAddShortbreadCookie_DoesNotIncrement_NumberOfChocolateChipCookies() {
        
        let cookie = CookieManager()
        let numberOfCookies = cookie.chocolateChipCookies!.count
        
        cookie.addShortbreadCookie()
        
        XCTAssertEqual(cookie.chocolateChipCookies!.count, numberOfCookies)
    }
    
    func testAddChocolateChipCookie_Increment_NumberOfChocolateChipCookies_ByOne() {
        
        let cookie = CookieManager()
        let numberOfCookies = cookie.chocolateChipCookies!.count
        
        cookie.addChocolateChipCookie()
        
        let expectedNumberOfCookies = numberOfCookies + 1
        
        XCTAssertEqual(cookie.chocolateChipCookies!.count, expectedNumberOfCookies)
    }
    
    func testAddChocolateChipCookie_DoesNot_Increment_NumberOfGingerbreadCookies() {
        
        let cookie = CookieManager()
        let numberOfCookies = cookie.gingerbreadCookies!.count
        
        cookie.addChocolateChipCookie()
        
        XCTAssertEqual(cookie.gingerbreadCookies!.count, numberOfCookies)
    }
    
    func testAddChocolateChipCookie_Does_Not_Increment_NumberOfShortbreadCookies() {
        
        let cookie = CookieManager()
        let numberOfCookies = cookie.shortbreadCookies!.count
        
        cookie.addChocolateChipCookie()
        
        XCTAssertEqual(cookie.shortbreadCookies!.count, numberOfCookies)
    }
    
    func testReset_GingerbreadCookieArray_WithZeroElements_RemainsEmpty() {
        
        let cookie = CookieManager()
        
        cookie.reset()
        
        XCTAssertEqual(cookie.gingerbreadCookies!.count, 0)
    }
    
    func testReset_ShortbreadCookieArray_WithZeroElements_RemainsEmpty() {
        
        let cookie = CookieManager()
        
        cookie.reset()
        
        XCTAssertEqual(cookie.shortbreadCookies!.count, 0)
    }
    
    func testReset_ChocolateChipCookieArray_WithZeroElements_RemainsEmpty() {
        
        let cookie = CookieManager()
        
        cookie.reset()
        
        XCTAssertEqual(cookie.chocolateChipCookies!.count, 0)
    }
    
    func testReset_GingerbreadCookieArray_WithElements_BecomesEmpty() {
        
        let cookie = CookieManager()
        
        cookie.addGingerbreadCookie()
        cookie.reset()
        
        XCTAssertEqual(cookie.gingerbreadCookies!.count, 0)
    }
    
    func testReset_ShortbreadCookieArray_WithElements_BecomesEmpty() {
        
        let cookie = CookieManager()
        
        cookie.addShortbreadCookie()
        cookie.reset()
        
        XCTAssertEqual(cookie.shortbreadCookies!.count, 0)
    }
    
    func testReset_ChocolateChipCookieArray_WithElements_BecomesEmpty() {
        
        let cookie = CookieManager()
        
        cookie.addChocolateChipCookie()
        cookie.reset()
        
        XCTAssertEqual(cookie.chocolateChipCookies!.count, 0)
    }
    
}
