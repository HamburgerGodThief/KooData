//
//  PokemonCollectionViewCell.swift
//  KooData
//
//  Created by Hamburger on 2021/1/15.
//

import UIKit

class PokemonCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var pokemonImg: UIImageView!
    
    @IBOutlet weak var barView: UIView! {
        
        didSet {
            
            barView.backgroundColor = UIColor.lightGray
            
            barView.alpha = 0.5
            
        }
        
    }
    
    @IBOutlet weak var numberNameLbl: UILabel! {
        
        didSet {
            
            numberNameLbl.font = UIFont.systemFont(ofSize: 18, weight: .regular)
            
        }
        
    }
    
    @IBOutlet weak var typeLbl: UILabel! {
        
        didSet {
            
            typeLbl.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            
        }
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
