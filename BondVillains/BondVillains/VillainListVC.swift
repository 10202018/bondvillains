//
//  ViewController.swift
//  BondVillains
//
//  Created by Jason on 11/19/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate

class VillainListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Properties
    // Get ahold of some villains, for the table
    // This is an array of Villain instances
    let allVillains = Villain.allVillains
    
    // Get access to the Villain Detail VC
    let villainDetailVC: VillainDetailVC! = VillainDetailVC()
    
    
    // MARK: Table View Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allVillains.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VillainCell")!
        let villain = self.allVillains[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        cell.textLabel?.text = villain.name
        cell.imageView?.image = UIImage(named: villain.imageName)
        
        // If the cell has a detail label, we will put the evil scheme in.
        if let detailTextLabel = cell.detailTextLabel {
            detailTextLabel.text = "Scheme: \(villain.evilScheme)"
        }
        
        return cell
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let villainDetailVC = self.storyboard!.instantiateViewController(withIdentifier: "villainDetailVC") as! VillainDetailVC
        villainDetailVC.villain = self.allVillains[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(villainDetailVC, animated: true)
    }
}
