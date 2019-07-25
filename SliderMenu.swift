//
//  SliderMenu.swift
//  BottomSlideMenu
//
//  Created by AmitThakur on 25/07/19.
//  Copyright © 2019 Mayurpankh. All rights reserved.
//

import UIKit

class SliderMenu: NSObject, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor.white
        cv.delegate = self
        cv.dataSource = self
        return cv
    }()
    override init() {
        super.init()
        collectionView.register(SliderMenuCell.self, forCellWithReuseIdentifier: "CellID")
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 60)
    }
    let blackView : UIView = {
        let bv = UIView()
        bv.backgroundColor  = UIColor(white: 0, alpha: 0.5)
        return bv
    }()
    func showSliderMenu()  {
        if let window = UIApplication.shared.keyWindow {
            let y = window.frame.height - 200
            collectionView.frame = CGRect(x: 0, y: window.frame.height, width: window.frame.width, height: 200)
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissBlackView)))
            window.addSubview(blackView)
            window.addSubview(collectionView)
            
            blackView.frame = window.frame
            blackView.alpha = 0
            
            
            UIView.animate(withDuration:0.5){
                self.blackView.alpha = 1
                self.collectionView.frame = CGRect(x: 0, y: y, width: window.frame.width, height: 200)
            }
        }
    }
    
    @objc func dismissBlackView() {
        print(212)
        if let window = UIApplication.shared.keyWindow {
            UIView.animate(withDuration: 0.5) {
                self.blackView.alpha = 0
               self.collectionView.frame = CGRect(x: 0, y: window.frame.height, width: window.frame.width, height: 200)
            }
            
        }
        
    }
    
}
