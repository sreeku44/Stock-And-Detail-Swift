//
//  ViewController.swift
//  Stock And  Detail Swift
//
//  Created by Sreekala Santhakumari on 3/9/17.
//  Copyright © 2017 Klas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stockNameVC : StockNameViewController!
    var stockDetailVC : StockDetailViewController!


    override func viewDidLoad() {
        super.viewDidLoad()
    
        var childViewControllers = self.childViewControllers
        self.stockNameVC = (childViewControllers[0] as! StockNameViewController)
        self.stockDetailVC = (childViewControllers[1] as! StockDetailViewController)
        self.stockNameVC.delegate = self.stockDetailVC

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }


}

