//
//  StockNameViewController.swift
//  Stock And  Detail Swift
//
//  Created by Sreekala Santhakumari on 3/12/17.
//  Copyright © 2017 Klas. All rights reserved.
//

import UIKit

protocol stockNameVCDelegte {
    
    func stockeNameTouched(details :String)
    
}


class StockNameViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var delegate : stockNameVCDelegte?
    
    var stockNames = [String]()
    var stockNameTable : UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()

        stockNames.append("FaceBook Inc")
        stockNames.append("General Motor")
        stockNames.append("Apple Inc")
        stockNames.append("Google")
        
        self.stockNameTable?.reloadData()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return stockNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = stockNames[indexPath.row]
        
        return cell
    }

     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell: UITableViewCell? = tableView.cellForRow(at: indexPath)
        let cellText: String? = cell?.textLabel?.text
        self.delegate?.stockeNameTouched(details: cellText!)
        
    }
}
