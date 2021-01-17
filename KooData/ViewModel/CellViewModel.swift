//
//  CellViewModel.swift
//  KooData
//
//  Created by Hamburger on 2021/1/17.
//

import Foundation

struct CellViewModel {
    
    let number: String
    
    let name: String
    
    let imageUrl: String
    
    var numberNameText: String {
        
        get {
            
            number + "－" + name
            
        }
        
    }
                
}


  
