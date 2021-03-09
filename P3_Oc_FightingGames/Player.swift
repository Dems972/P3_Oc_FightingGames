//
//  Player.swift
//  P3_Oc_FightingGames
//
//  Created by Dems on 20/02/2021.
//

import Foundation

class Player
{
    //nom du joueur
    var playerName: String
    //tableau vide
    var characterPlayers = [Character]()
    //compteur pr la selection des perso
    let charactermax = 3
    
    init(name: String)
    {
        self.playerName = name
    }
    
    func selectCharacterType()
    {
        if let input = readLine()
        {
            // On recupere la saisie et on s'assure quelle soit une valeur numerique
            if let choice = Int(input)
            {
                switch choice
                {
                    case 1:
                    let warrior = Warrior()
                
                    warrior.characterNames()
                        if warrior.nameCheck(arrayCharacter: self.characterPlayers) == true
                    {
                        characterPlayers.append(warrior)
                        
                    }
                
                    case 2:
                    let colossus = Colossus()
                
                    colossus.characterNames()
                    if colossus.nameCheck(arrayCharacter: self.characterPlayers) == true
                    {
                        characterPlayers.append(colossus)
                        
                    }
                
                    case 3:
                    let mage = Mage()
                
                    mage.characterNames()
                    if mage.nameCheck(arrayCharacter: self.characterPlayers) == true
                    {
                        characterPlayers.append(mage)
                        
                    }
                
                    case 4:
                    let dwarf = Dwarf()
                
                    dwarf.characterNames()
                    if dwarf.nameCheck(arrayCharacter: self.characterPlayers) == true
                    {
                        characterPlayers.append(dwarf)
                        
                    }
    
                    default:
                    print("Vous vous êtes trompé/n")
                }
            }
        }
    }
    
    func listCharacter()
    {
        print("Taper 1 pour choisir un Guerrier")
        print("Taper 2 pour choisir un Colosse")
        print("Taper 3 pour choisir un Magicien")
        print("Taper 4 pour choisir un Nain\n")
    }
    
    func boucleSelectTeam()
    {
        while characterPlayers.count < charactermax
        {
            listCharacter()
            selectCharacterType()
            print("Actuellelent \(characterPlayers.count)/3\n")
            
        }
        listTeam()
    }
    
    func listTeam()
    {
        print("Voici vos 3 personnages :\n")
        
        for character in characterPlayers
        {
            print("\(character.characterName),de type: \(character.typeName) avec 1\(character.life)PV\n")
        }
    }
    
    func selectCharacter()
    {
        
    }
    
    
}
