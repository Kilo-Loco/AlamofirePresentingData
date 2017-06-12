//
//  GetPeopleResponse.swift
//  Star Wars
//
//  Created by Kyle Lee on 6/11/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation

struct GetPeopleResponse {
    
    let people: [Person]
    
    init(json: JSON) throws {
        guard let results = json["results"] as? [JSON] else { throw NetworkingError.badNetworkingStuff }
        let people = results.map{ Person(json: $0) }.flatMap{ $0 }
        self.people = people
    }
}
