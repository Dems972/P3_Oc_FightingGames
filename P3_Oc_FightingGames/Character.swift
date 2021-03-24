//
//  Character.swift
//  P3_Oc_FightingGames
//
//  Created by Dems on 20/02/2021.
//

import Foundation

class Character
{
    var characterName: String
    var life: Int
    var heal: Int
    var typeName : String
    var defautWeapon = Weapon(damage: 0)
    
    
    init(characterName: String, life: Int, heal: Int, typeName: String )
    {
        self.characterName = characterName
        self.life = life
        self.typeName = typeName
        self.heal = heal
    }
    
    // je demande a l'utilisateur de saisir le nom de son personage
    func characterNames()
    {
        print("Entre le nom de votre personnages")
        
        if let nameInput = readLine()
        {
            characterName = nameInput
        }
    
    }
    
    //
    func nameCheck(arrayCharacter : [Character]) -> Bool
    {
        for character in arrayCharacter
        {
            //if character.characterName.contains(characterName)
            if character.characterName == characterName
            {
                print("\n\(characterName) existe deja\n")
                return false
            }
        }
        
        // afficher le personnage crée
        print("\nJe suis un \(typeName), je m'appelle \(characterName) j'ai \(life)PV\n")
        
        return true
    }
    
    func attack (enemy: Character)
    {
        print("\(characterName), attaque \(enemy.characterName)")
        
        if enemy.life > 0
        {
            //faire mon calcule
            enemy.life = enemy.life - defautWeapon.damage
            print("\(enemy.characterName) a perdu \(defautWeapon.damage) il lui reste \(enemy.life)")
        }
        
    }
    
    func healed(ally: Character)
    {
        print("\(characterName), soigne \(ally.characterName)")
        
        if ally.life > 0
        {
            ally.life = ally.life + heal
            print("\(ally.characterName) a recuperer \(heal)pv son total de vie est de :\(ally.life)")
        }
        else 
        {
            print("\(ally.characterName), na plus de pv il ne peut plus etre soigné")
        }
    }
    
}
