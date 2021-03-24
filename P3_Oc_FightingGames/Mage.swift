//
//  Mage.swift
//  P3_Oc_FightingGames
//
//  Created by Dems on 22/02/2021.
//

import Foundation

class Mage : Character
{
    init()
    {
        super.init(characterName: "", life: 70, heal: 30, typeName: "Magicien")
        defautWeapon = Wand()
    }
}
