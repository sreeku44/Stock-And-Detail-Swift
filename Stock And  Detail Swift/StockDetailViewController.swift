//
//  StockDetailViewController.swift
//  Stock And  Detail Swift
//
//  Created by Sreekala Santhakumari on 3/12/17.
//  Copyright © 2017 Klas. All rights reserved.
//

import UIKit

class StockDetailViewController: UIViewController, stockNameVCDelegte {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var detailStockLabel: UILabel!
    
    
    func stockeNameTouched(details :String){
        
        detailStockLabel.text = details
        
        
    }

}
