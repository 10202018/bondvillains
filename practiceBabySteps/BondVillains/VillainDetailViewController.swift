//
//  VillainDetailViewController.swift
//  BondVillains
//
//  Created by Jason on 12/12/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - VillainDetailViewController: UIViewController

class VillainDetailViewController: UIViewController {
    
    // MARK: Properties
    
    var villain: Villain!
    
    // MARK: Outlets
    
    @IBOutlet weak var villainProfilePic: UIImageView!
    @IBOutlet weak var villainName: UILabel!
    @IBOutlet weak var villainScheme: UILabel!
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.villainName.text = self.villain.name
        self.villainProfilePic!.image = UIImage(named: villain.imageName)
        self.villainScheme.text = "Evil plan: \(self.villain.evilScheme)"
    }
}
