//
//  BeerCell.swift
//  StretchyHeaders
//
//  Created by Zhaolong Zhong on 7/4/16.
//  Copyright © 2016 Zhaolong Zhong. All rights reserved.
//

import UIKit

class BeerCell: UICollectionViewCell {
    let TAG = NSStringFromClass(BeerCell)
    
    @IBOutlet var beerImageView: UIImageView!
    @IBOutlet var beerNameLabel: UILabel!
    @IBOutlet var sinceLabel: UILabel!
    
    
    var beer: Beer? {
        didSet {
            if let beer = self.beer {
                beerImageView.image = UIImage(named: beer.image)
                beerNameLabel.text = beer.title
                sinceLabel.text = beer.since
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
