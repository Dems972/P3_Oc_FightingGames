//
//  Warrior.swift
//  P3_Oc_FightingGames
//
//  Created by Dems on 22/02/2021.
//

import Foundation

class Warrior : Character
{
    init()
    {
        super.init(characterName: "", life: 100, typeName: "Guerrier")
        defautWeapon = Sword()
    }
}
