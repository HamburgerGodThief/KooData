//
//  Apollo.swift
//  KooData
//
//  Created by Hamburger on 2021/1/17.
//

import Foundation
import Apollo

class Apollo {
    
    static let shared = Apollo()
    
    let client: ApolloClient
    
    init() {
        
        client = ApolloClient(url: URL(string: "https://graphql-pokemon2.vercel.app/")!)
        
    }
    
}
