//
//  ViewController.swift
//  SampleTableViewContainsCollectionView
//
//  Created by Raju on 5/26/17.
//  Copyright © 2017 Raju. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let customTableView: UITableView = UITableView();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customTableView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height);
        customTableView.delegate = self;
        customTableView.dataSource = self;
        customTableView.tableFooterView = UIView(frame: CGRect.zero);
        
        self.view.addSubview(customTableView);
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: CustomTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomTableViewCell;
        if ( cell == nil){
            
            cell = CustomTableViewCell(style: .default, reuseIdentifier: "cell");
        }
        
        return cell!;
    }

}

