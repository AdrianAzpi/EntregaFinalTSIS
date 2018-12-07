//
//  witchPlayer.swift
//  CatGameTSIS2019-1
//
//  Created by Adrian on 11/14/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import Foundation

class witchPlayer {
    static func selectPlayer()-> Bool {
        let number = Bool.random()
        // print("Dame el nombre del jugador 1? ")
        
        if number == true {
            let player1 = true

            print("Empieza el jugador 1 con X")
            return player1
        } else {
            let player2 = false

            print("Empieza el jugador 2 con O")
            return player2
        }
    }
    
    static func returnThePlayer(){
        
    }
    
}
