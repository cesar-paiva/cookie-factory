//
//  ViewController.swift
//  CookieFactory
//
//  Created by Cesar Paiva on 05/11/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shortbreadCookies: UILabel!
    @IBOutlet weak var chocolateChipCookies: UILabel!
    @IBOutlet weak var gingerbreadCookies: UILabel!
    @IBOutlet weak var totalCookies: UILabel!
    
    var cookieManager: CookieManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cookieManager = CookieManager()
        refreshUI()
    }

    @IBAction func onGenerateShortbreadCookies(_ sender: Any) {
        cookieManager?.addShortbreadCookie()
        refreshUI()
    }
    
    @IBAction func onGenerateChocolateChipCookies(_ sender: Any) {
        cookieManager?.addChocolateChipCookie()
        refreshUI()
    }
    
    @IBAction func onGenerateGingerbreadCookies(_ sender: Any) {
        cookieManager?.addGingerbreadCookie()
        refreshUI()
    }
    
    @IBAction func onClearAllCookies(_ sender: Any) {
        cookieManager?.reset()
        refreshUI()
    }
    
    func refreshUI() {
        
        let totalGinger = cookieManager?.gingerbreadCookies?.count
        let totalShort = cookieManager?.shortbreadCookies?.count
        let totalChocolate = cookieManager?.chocolateChipCookies?.count
        var total = 0
        if let totalGinger = totalGinger, let totalShort = totalShort, let totalChocolate = totalChocolate {
    
            total = totalGinger + totalShort + totalChocolate
        }
        
        gingerbreadCookies.text = "Gingerbread cookies: \(totalGinger ?? 0)"
        shortbreadCookies.text = "Shortbread cookies: \(totalShort ?? 0)"
        chocolateChipCookies.text = "Chocolate chip cookies: \(totalChocolate ?? 0)"
        totalCookies.text = "Total cookies: \(total)"
    }
}

