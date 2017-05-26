//
//  CustomTableViewCell.swift
//  SampleTableViewContainsCollectionView
//
//  Created by Raju on 5/26/17.
//  Copyright © 2017 Raju. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell , UICollectionViewDelegate, UICollectionViewDataSource {

    
    var sampleCollectionView: UICollectionView?;
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func layoutSubviews() {
        
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal;
        flowLayout.itemSize = CGSize(width: self.contentView.bounds.size.width/5, height: self.contentView.bounds.size.height);
        
        sampleCollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.contentView.bounds.size.width, height: self.contentView.bounds.size.height), collectionViewLayout: flowLayout);
        sampleCollectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell");
        sampleCollectionView!.delegate = self
        sampleCollectionView!.dataSource = self
        sampleCollectionView!.backgroundColor = UIColor.cyan;
        
        
        
        self.contentView.addSubview(sampleCollectionView!);

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
