//
//  ViewController.swift
//  StretchyHeaders
//
//  Created by Zhaolong Zhong on 7/3/16.
//  Copyright © 2016 Zhaolong Zhong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var collectionView: UICollectionView!
    
    var beers:[Beer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        beers = Beer.getTestData()
        setUpCollectionView()
    }
    
    func setUpCollectionView() {
        let width = CGRectGetWidth(collectionView!.bounds)
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.headerReferenceSize = CGSize(width: width, height: 180)
        
        // custom all cell height here or you can custom height for each cell in UICollectionViewDataSource
         layout.itemSize = CGSize(width: width, height: 62)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beers.count
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "CollectionHeaderView", forIndexPath: indexPath) as! CollectionHeaderView
        return header
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("BeerCell", forIndexPath: indexPath) as! BeerCell
        
//        let cellHeight:CGFloat = 600
//        cell.frame = CGRectMake(cell.frame.origin.x, cell.frame.origin.y, cell.frame.size.width, cellHeight)
        cell.beer = beers[indexPath.row]
        return cell
    }
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
//                        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize{
//        let width: CGFloat = self.view.bounds.width
//        
//        return CGSizeMake(width, 600);
//    }
}

