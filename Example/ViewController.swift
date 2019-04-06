//
//  ViewController.swift
//  DataSource
//
//  Created by Gurung Bishow on 6/4/19.
//  Copyright © 2019 Gurung Bishow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func getUserActn(_ sender: Any) {
        self.viewModel.getUser()
    }
    var viewModel:ViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = ViewModel(withDatasource: DataSource.userDataSource) // Inject from outside in real implementation not from here.
        
    }


}

