//
//  DetailsVC.swift
//  Star Wars
//
//  Created by Kyle Lee on 6/11/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var homeworld: UILabel!
    @IBOutlet weak var birthYear: UILabel!
    @IBOutlet weak var eyeColor: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var hairColor: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var mass: UILabel!
    @IBOutlet weak var skinColor: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(person)
        name.text = person.name
        birthYear.text = person.birthYear
        eyeColor.text = person.eyeColor
        gender.text = person.gender
        hairColor.text = person.hairColor
        height.text = person.height
        mass.text = person.mass
        skinColor.text = person.skinColor
        person.homeworld { (homeworld) in
            self.homeworld.text = homeworld
        }
    }

}
