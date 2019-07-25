//
//  SliderMenuCell.swift
//  BottomSlideMenu
//
//  Created by AmitThakur on 25/07/19.
//  Copyright © 2019 Mayurpankh. All rights reserved.
//

import UIKit

class SliderMenuCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupviews()
    }
    
    let cellImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "DuaLipa")
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 14
        iv.layer.masksToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let cellLabel: UILabel = {
        let cl = UILabel()
        cl.text = "duaLipa"
        cl.translatesAutoresizingMaskIntoConstraints = false
        return cl
    }()
    
    let cellBottomLineView: UIView = {
        let lv = UIView()
        lv.backgroundColor = UIColor.darkGray
        lv.translatesAutoresizingMaskIntoConstraints = false
        return lv
    }()
    
    func setupviews()  {
        //setup views

        addSubview(cellImageView)
        addSubview(cellBottomLineView)
        addSubview(cellLabel)
        
        cellImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        cellImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        cellImageView.widthAnchor.constraint(equalToConstant: 28).isActive = true
        cellImageView.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        cellBottomLineView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        cellBottomLineView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        cellBottomLineView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        cellBottomLineView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        
        cellLabel.leftAnchor.constraint(equalTo: cellImageView.rightAnchor, constant: 8).isActive = true
        cellLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        cellLabel.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        cellLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
