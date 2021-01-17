//
//  PokemonVCViewModel.swift
//  KooData
//
//  Created by Hamburger on 2021/1/17.
//

import Foundation

class PokemonVCViewModel {
    
    var cellViewModels: [CellViewModel] = [CellViewModel]() {

        didSet {

            self.reloadCollectionViewClosure?()

        }

    }
    
    var reloadCollectionViewClosure: (()->())?

    var numberOfCells: Int {

        return cellViewModels.count

    }
    
    func loadData() {
        
        let query = GetPokemonsQuery()
        
        Apollo.shared.client.fetch(query: query) { result in
            
            switch result {
            
            case .success(let graphQLResult):
                
                if let pokemons = graphQLResult.data?.pokemons?.compactMap({ $0 }) {
                    
                    for element in pokemons {
                        
                        let pokemonModel = PokemonModel(number: element.number!,
                                                        name: element.name!,
                                                        imageUrl: element.image!)
                        
                        let itemViewModel = CellViewModel(number: pokemonModel.number,
                                                          name: pokemonModel.name,
                                                          imageUrl: pokemonModel.imageUrl)
                        
                        self.cellViewModels.append(itemViewModel)
                        
                    }
                    
                }
                
            case .failure(let error):
                
                print("Error loading data \(error)")
                
            }
            
        }
        
    }

}
