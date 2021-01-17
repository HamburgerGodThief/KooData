//
//  PokemonVC.swift
//  KooData
//
//  Created by Hamburger on 2021/1/15.
//

import UIKit

class PokemonVC: UIViewController {

    @IBOutlet weak var pokemonCollectionView: UICollectionView! {
        
        didSet {
            
            pokemonCollectionView.delegate = self
            
            pokemonCollectionView.dataSource = self
            
            pokemonCollectionView.registerItemWithNib(identifier: String(describing: PokemonCollectionViewCell.self), bundle: nil)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonCollectionView.backgroundColor = .blue
        
    }


}

extension PokemonVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 20
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                
        guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonCollectionViewCell", for: indexPath) as? PokemonCollectionViewCell else { return UICollectionViewCell() }
                                
        return item
                    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = floor(view.frame.size.width)

        let height = floor((collectionView.frame.size.height - 150) / 3)

        return CGSize(width: width, height: height)

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
        
}
