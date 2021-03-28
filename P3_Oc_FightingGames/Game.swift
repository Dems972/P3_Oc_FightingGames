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
    
    var roundCount = 0
    
    
    init()
    {
        player1 = Player(name: "Joueur 1")
        player2 = Player(name: "Joueur 2")
    }
    
    
    func startGame()
    {
        presentation()
        playerChooseCharacter()
        battle()
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
        print("préparer vous au combat\n")
        
        while player1.isPlayerAlive() && player2.isPlayerAlive()
        {
            print(" ")
            print("\(player1.playerName): Entre 1 ou 2 pour choisir entre le mode: ")
            print("--------------")
            print(" 1. Attack:")
            print(" 2. Heal:")
            print("--------------\n")
            if let input = readLine()
            {
                // On recupere la saisie et on s'assure quelle soit une valeur numerique
                if let choice = Int(input)
                {
                    switch choice
                    {
                        case 1:
                            if player1.characterPlayers.count != 0
                            {
                                //player1.listTeam()
                                let myCharacter = player1.selectCharacter(characters: player1.characterPlayers, select: nil)
                                
                                let opponent = player1.selectCharacter(characters: player2.characterPlayers, select: myCharacter)
                                myCharacter.attack(enemy: opponent)
                                roundCount+=1
                            }
                        case 2:
                            if player1.characterPlayers.count != 0
                            {
                                //player1.listTeam()
                                let myCharacter = player1.selectCharacter(characters: player1.characterPlayers, select: nil)
                                myCharacter.healed(ally: myCharacter)
                                roundCount+=1
                            }
                      default:
                        print("Le numero choisit doit être comprit entre 1 et 2")
                        break
                    }
                    
                }
            }
            swap(&player1, &player2)
        }
        winner()
        resumGame()
    }
    
    func winner()
    {
        if player1.isPlayerAlive()
        {
            print("Le joueur 1 n'a plus de personnages dans son équipe")
            print("Le joueur 2 a gagné")
        }
        else
        {
            print("Le joueur 2 n'a plus de personnages dans son équipe")
            print("Le joueur 1 a gagné")
        }
    }
    
    func resumGame()
    {
        print("====================")
        print("** Résumer **")
        print("Nombre de tour \(roundCount)")
        print("====================")
        print("info sur les personnages du \(player1.playerName )")
        player1.listTeam()
        print("====================")
        print("info sur les personnages du \(player2.playerName )")
        player2.listTeam()
        print("====================")
        print("Félicitation merci d'avoir joué")
        print("Fin du jeu")
        
    }
    
    
}


