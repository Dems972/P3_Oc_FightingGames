//
//  Dwarf.swift
//  P3_Oc_FightingGames
//
//  Created by Dems on 22/02/2021.
//

import Foundation

class Dwarf : Character
{
    init()
    {
        super.init(characterName: "", life: 90, heal: 15, typeName: "Nain")
        defautWeapon = Axe()
    }
}
