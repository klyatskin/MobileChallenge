//
//  DataModel.swift
//  PayTM_1
//
//  Created by Konstantin Klyatskin on 2017-02-10.
//  Copyright © 2017 Konstantin Klyatskin. All rights reserved.
//

import Foundation


class DataModel {

    let baseCurrensy = "EUR"
    var rates: [String: Double] = [:]
    var currencies: [String] = []
    

    func update(data: Data) {
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]

            self.rates = json!["rates"] as! [String : Double]
            self.currencies = Array(rates.keys)
 
        } catch {
            print("error in JSONSerialization")
        }
    }
    
    
}
