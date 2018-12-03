//
//  VillianDetailVC.swift
//  BondVillains
//
//  Created by TJ on 12/2/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

class VillainDetailVC: UIViewController {
    var villain: Villain!
    
    // You get the best lessons out of life when you are able to change/make your own way
    @IBOutlet weak var  profilePic: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.label.alpha = 0.75
        self.label.textColor = .white
        self.label.text = self.villain.name
        self.profilePic!.image = UIImage(named: villain.imageName)
    }
}
