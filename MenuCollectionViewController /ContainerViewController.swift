//
//  ContainerViewController.swift
//  HairyLemon
//
//  Created by Anatoliy on 14.10.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    
    
    var segmentControlMenu : UISegmentedControl?
    var foodMenuCollectionVC: FoodMenuCollectionViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = .white
    }
    
    func setupUI () {
        foodMenuCollectionVC = FoodMenuCollectionViewController(size: view.frame.size)
        let array = ["Еда", "Напитки", "Кальяны"]
        segmentControlMenu = UISegmentedControl(items: array)
        segmentControlMenu?.selectedSegmentIndex = 0
        segmentControlMenu?.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentControlMenu!)
        let topSegmentConstraints = NSLayoutConstraint(item: segmentControlMenu, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 32)
        let bottomSegmentConstraints = NSLayoutConstraint(item: segmentControlMenu, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 40)
        let leadingSegmentConstraints = NSLayoutConstraint(item: segmentControlMenu, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 32)
        let trailingSegmentConstraints = NSLayoutConstraint(item: segmentControlMenu, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -32)
        
        NSLayoutConstraint.activate([topSegmentConstraints, bottomSegmentConstraints, leadingSegmentConstraints, trailingSegmentConstraints])
        
    }
    
    
}
