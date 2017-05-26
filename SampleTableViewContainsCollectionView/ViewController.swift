//
//  ViewController.swift
//  SampleTableViewContainsCollectionView
//
//  Created by Raju on 5/26/17.
//  Copyright © 2017 Raju. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {

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

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10;
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath as IndexPath);
        if ( indexPath.row % 2 == 0){
            cell.backgroundColor = UIColor.red;
        }else{
            cell.backgroundColor = UIColor.cyan;
        }
        
        
        return cell
    }
    
    
    /*func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
     {
     let width = (self.contentView.width-leftAndRightPaddings)/numberOfItemsPerRow
     return CGSizeMake(width, width)
     }
     
     func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets
     {
     return UIEdgeInsets(top: 20, left: 8, bottom: 5, right: 8)
     }*/
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
}

