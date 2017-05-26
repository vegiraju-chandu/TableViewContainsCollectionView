//
//  CustomTableViewCell.swift
//  SampleTableViewContainsCollectionView
//
//  Created by Raju on 5/26/17.
//  Copyright © 2017 Raju. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell  {

    
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
        
        
        let viewController = ViewController();
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal;
        flowLayout.itemSize = CGSize(width: self.contentView.bounds.size.width/5, height: self.contentView.bounds.size.height);
        
        sampleCollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.contentView.bounds.size.width, height: self.contentView.bounds.size.height), collectionViewLayout: flowLayout);
        sampleCollectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell");
        sampleCollectionView!.delegate = viewController
        sampleCollectionView!.dataSource = viewController
        sampleCollectionView!.backgroundColor = UIColor.cyan;
        
        self.contentView.addSubview(sampleCollectionView!);

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    

}
