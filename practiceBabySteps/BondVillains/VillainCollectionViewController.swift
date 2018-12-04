//
//  VillainCollectionViewController.swift
//  BondVillains
//
//  Created by TJ on 12/3/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

class VillainCollectionViewController: UICollectionViewController {
    //MARK: Properties
    
    let allVillains = Villain.allVillains
    
    //MARK: Outlets
    
    
    //MARK: Collection View Methods

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.allVillains.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let selectedVillain = self.allVillains[indexPath.row]
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! VillainCollectionViewCell
        cell.villainProfilePic.image = UIImage(named: selectedVillain.imageName)
        cell.villainName.text = selectedVillain.name
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedVillain = self.allVillains[indexPath.row]
        let villainDetailVC = self.storyboard?.instantiateViewController(withIdentifier: "VillainDetailViewController") as! VillainDetailViewController
        villainDetailVC.villain = selectedVillain
        self.navigationController?.pushViewController(villainDetailVC, animated: true)
    }
    
    //MARK: Actions
}
