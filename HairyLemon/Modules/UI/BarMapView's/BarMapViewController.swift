//
//  BarMapViewController.swift
//  HairyLemon
//
//  Created by Anatoliy on 01.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class BarMapViewController: UIViewController {
    
    let detailTableViewController = DetailTableViewController()
    let viewModel : BarMapViewModel = BarMapViewModel()
    


    override func viewDidLoad() {
        super.viewDidLoad()
               
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        //mapView.frame = view.bounds
        let mapView : MapView = MapView(frame: view.frame)
        view.addSubview(mapView)
         mapView.configurate()
        
        
        
        viewModel.addingTable = {[weak self] button in
            mapView.addView ( table: button)
            button.addTarget(self, action: #selector(self!.detailTable), for: .touchUpInside)
        }
        viewModel.viewDidLoad()
    }
    
    
    
    @objc func detailTable (sender : TableButton) {
        detailTableViewController.table = sender.tableModel
        present(detailTableViewController, animated: true, completion: nil)
        
    }

    

}
