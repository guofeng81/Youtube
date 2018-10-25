//
//  VideoCell.swift
//  youtube
//
//  Created by Feng Guo on 10/23/18.
//  Copyright © 2018 Feng Guo. All rights reserved.
//

import UIKit



class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupViews()
    }
    
    func setupViews(){
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class VideoCell : BaseCell {
    
    let separatorView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        //view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        //imageView.backgroundColor = UIColor.blue
        //imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "taylor_swift_blank_space")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let userProfileImageView : UIView = {
        let imageView = UIImageView()
        //imageView.backgroundColor = UIColor.green
        imageView.image = UIImage(named: "ts_profile")
        //imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        //label.backgroundColor = UIColor.purple
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Talor Swift - Blank Space"
        return label
        
    }()
    
    let subTitleView: UITextView = {
        let textView = UITextView()
        //textView.backgroundColor = UIColor.red
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "TaylorSwiftVEVO • 1,604,684,607 views • 2 years ago"
        textView.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        textView.textColor = UIColor.lightGray
        return textView
        
    }()
    
    override func setupViews(){
        addSubview(thumbnailImageView)
        addSubview(separatorView)
        addSubview(userProfileImageView)
        addSubview(titleLabel)
        addSubview(subTitleView)
        
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
        addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView,userProfileImageView,separatorView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: separatorView)
        
        addConstraintsWithFormat(format: "H:|-16-[v0(44)]", views: userProfileImageView)
        
        //top constraints
        addConstraints([NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8)])
        //left Constraints
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        //right Constraints
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        //height constraint
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        
        //top constraints
        addConstraints([NSLayoutConstraint(item: subTitleView, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 4)])
        //left Constraints
        addConstraint(NSLayoutConstraint(item: subTitleView, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        //right Constraints
        addConstraint(NSLayoutConstraint(item: subTitleView, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        //height constraint
        addConstraint(NSLayoutConstraint(item: subTitleView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
        
        
    }
    

    
}

