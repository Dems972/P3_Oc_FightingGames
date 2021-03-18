//
//  Colossus.swift
//  P3_Oc_FightingGames
//
//  Created by Dems on 22/02/2021.
//

import Foundation

class Colossus : Character
{
    init()
    {
        super.init(characterName: "", life: 150, heal: 10, typeName: "Colosse")
        defautWeapon = Axe()
    }
}
