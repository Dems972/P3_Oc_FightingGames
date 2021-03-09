//
//  game.swift
//  P3_Oc_FightingGames
//
//  Created by Dems on 20/02/2021.
//

import Foundation

class Game
{
    
    // création du J1
    var player1 : Player
    //création du J2
    var player2 : Player
    
    
    init()
    {
        player1 = Player(name: "Joueur 1")
        player2 = Player(name: "Joueur 2")
    }
    
    
    func startGame()
    {
        presentation()
        playerChooseCharacter()
        //battle()
    }
    
    
    func presentation()
    {
        print("Bienvenue dans Fighting Game!\n")
        print("Ce jeu se joue à 2 joueurs,chaque joueur devra choisir 3 personnage pour composé son équipe.\n")
        print("Pour gagner il faut etre le premier à tuer tout les personnage de l'équipe adverse \n")
        print("Que le meilleur gagne!\n")
        
    }
    
    
    
    func playerChooseCharacter()
    {
        print("\(player1.playerName) veuillez choisir vos 3 personnages\n")
        player1.boucleSelectTeam()
        
        print("\(player2.playerName) veuillez choisir vos 3 personnages\n")
        player2.boucleSelectTeam()
    }
    
    //Création du tableau vide & initialisation
    //var characterPlayers = [String]()
    /*var numberCharacter = 0
    
    //fonction creation du personage
    func characterNames()
    {
        while numberCharacter < 3
        {
            print("Entre le nom de votre personnages")
                
            if let name = readLine()
            {
                if characterPlayers.contains(name)
                {
                    print("\(name) existe deja")
                    
                }
                else
                {
                    characterPlayers.append(name)
                    numberCharacter += 1
                    print("Votre \(numberCharacter) personnage s'appel \(name)")
                    
                    
                }
                
            }
            
        }
        //print(characterPlayers.count)
        
        for test in characterPlayers
        {
            print(test)
        }
        
    }
} */

    func battle()
    {
        print("préparer vous au combat")
        
        while player1.characterPlayers.count != 0 || player2.characterPlayers.count != 0
        {
            player1.listTeam()
        }
    }
    
    
    
    
}


