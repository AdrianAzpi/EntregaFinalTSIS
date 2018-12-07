//
//  CatGameViewController.swift
//  CatGameTSIS2019-1
//
//  Created by Adrian on 11/14/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit
import Alamofire

class CatGameViewController: UIViewController {
    
    @IBOutlet weak var image0_0: UIImageView!
    @IBOutlet weak var image0_1: UIImageView!
    @IBOutlet weak var image0_2: UIImageView!
    @IBOutlet weak var image1_0: UIImageView!
    @IBOutlet weak var image1_1: UIImageView!
    @IBOutlet weak var image1_2: UIImageView!
    @IBOutlet weak var image2_0: UIImageView!
    @IBOutlet weak var image2_1: UIImageView!
    @IBOutlet weak var imagen2_2: UIImageView!
    
    @IBOutlet weak var button00: UIButton!
    @IBOutlet weak var button01: UIButton!
    @IBOutlet weak var button02: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button21: UIButton!
    @IBOutlet weak var button22: UIButton!

    
    @IBOutlet weak var victoryPlayer1: UILabel!
    @IBOutlet weak var victoryPlayer2: UILabel!

    
    
    
    @IBOutlet weak var turnOfPlayerWithToekn: UILabel!
    @IBOutlet weak var winCounterLabel: UILabel!   //Jugador de abajo
    @IBOutlet weak var winCounterPlayer2Label: UILabel! //Jugador de arriba
    @IBOutlet weak var gameCounterLabel: UILabel!
    @IBOutlet weak var contadorDePartidaRealNoFake: UILabel!
    
    //Funcion para determinar quien empieza
    let whoStart = witchPlayer.selectPlayer()
    
    var Player1LabelText: String = ""
    var Player2LabelText: String = ""
    
    var counterPlayer1 = "0"
    var counterPlayer2 = "0"
    
    
    var player1WinCounter: Int = 0 //Auxiliar para actualizar labels de wins de cada jugador
    var player2WinCounter: Int = 0
    
    var matchCounterX = 0 //Auxiliar para mostrar alert de fin de partidas
    var matchCounterO = 0
    
    var victoriaActual = 0 //Contador aux para imprimer el label de la partida actual

    override func viewDidLoad() {
        super.viewDidLoad()
        winCounterPlayer2Label.text = Player1LabelText
        winCounterLabel.text = Player2LabelText
        
        victoryPlayer1.text = updateCounterX()
        victoryPlayer2.text = updateCounterO()
        
        makingARequest()

        
        breakGame()
        
        
self.navigationController?.navigationBar.barTintColor = UIColor.white       // Do any additional setup after loading the view.
    }
    
//    func whoStarts(player1: Bool, player2: Bool) -> Bool {
//        if whoStart {
//            pplayer1 = true
//            return true
//        }
//            pplayer2 = false
//            return false
//    }
    var auxiliar = 1 //Para que lleve el conteo de los turnos
    
    @IBAction func button0_0(_ sender: UIButton) {
        makingARequest()
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image0_0.image = UIImage(named: "Equis")
            
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image0_0.image = UIImage(named: "ccirculo")
        }
        sender.isEnabled = false
        checkIfYouWin()
        auxiliar += 1
        
        
        displayMessage()
        
    }
    
    @IBAction func buton0_1(_ sender: UIButton) {
        makingARequest()
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image0_1.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image0_1.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
            displayMessage()
    }
    
    @IBAction func buton0_2(_ sender: UIButton) {
        makingARequest()
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image0_2.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image0_2.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
        
            displayMessage()
    }
    
    @IBAction func buton1_0(_ sender: UIButton) {
        makingARequest()
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image1_0.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image1_0.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
        
        displayMessage()
    }
    
    @IBAction func buton1_1(_ sender: UIButton) {
        makingARequest()
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image1_1.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image1_1.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
        
            displayMessage()
    }

    @IBAction func buton1_2(_ sender: UIButton) {
        makingARequest()
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image1_2.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image1_2.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
        
            displayMessage()
    }
    
    @IBAction func buton2_0(_ sender: UIButton) {
        makingARequest()
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image2_0.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image2_0.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
        
            displayMessage()

    }
    
    @IBAction func buton2_1(_ sender: UIButton) {
        makingARequest()
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image2_1.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image2_1.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
        
            displayMessage()
    }
    
    @IBAction func buton2_2(_ sender: UIButton) {
        makingARequest()
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            imagen2_2.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            imagen2_2.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
        
            displayMessage()

    }
    
    func checkIfYouWin() {
        
            //posibilidad 1  XXX
            if (image0_0.image == UIImage(named: "Equis") && image0_1.image == UIImage(named: "Equis") && image0_2.image == UIImage(named: "Equis") ) {
                myAlertPlayeroneWin()
                 player1WinCounter += 1
                updateCounterX()
                clearBoardAFterWin()
                print("YOU WIN! X")
                matchCounterX += 1
                victoriaActual += 1
                updateActualMatch()
            }
            //posibilidad 2 ---
            //              XXX
            else if (image1_0.image == UIImage(named: "Equis") && image1_1.image == UIImage(named: "Equis") && image1_2.image == UIImage(named: "Equis") ) {
                myAlertPlayeroneWin()
                 player1WinCounter += 1
                updateCounterX()
                clearBoardAFterWin()
                print("YOU WIN! X")
                matchCounterX += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 3 ---
            //                  ---
            //                  XXX
            else if (image2_0.image == UIImage(named: "Equis") && image2_1.image == UIImage(named: "Equis") && imagen2_2.image == UIImage(named: "Equis") ) {
                myAlertPlayeroneWin()
                player1WinCounter += 1
                updateCounterX()
                clearBoardAFterWin()
                print("YOU WIN! X")
                matchCounterX += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 4  X
                //               X
                //               X
            else if (image0_0.image == UIImage(named: "Equis") && image1_0.image == UIImage(named: "Equis") && image2_0.image == UIImage(named: "Equis") ) {
                myAlertPlayeroneWin()
                 player1WinCounter += 1
                updateCounterX()
                clearBoardAFterWin()
                print("YOU WIN! X")
                matchCounterX += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 5  -X
                //               -X
                //               -X
            else if (image0_1.image == UIImage(named: "Equis") && image1_1.image == UIImage(named: "Equis") && image2_1.image == UIImage(named: "Equis") ) {
                myAlertPlayeroneWin()
                 player1WinCounter += 1
                updateCounterX()
                clearBoardAFterWin()
                print("YOU WIN! X")
                matchCounterX += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 6 --X
                //              --X
                //              --X
            else if (image0_2.image == UIImage(named: "Equis") && image1_2.image == UIImage(named: "Equis") && imagen2_2.image == UIImage(named: "Equis") ) {
                myAlertPlayeroneWin()
                 player1WinCounter += 1
                updateCounterX()
                clearBoardAFterWin()
                print("YOU WIN! X")
                matchCounterX += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 7  X
                //               -X
                //               --X
            else if (image0_0.image == UIImage(named: "Equis") && image1_1.image == UIImage(named: "Equis") && imagen2_2.image == UIImage(named: "Equis") ) {
                myAlertPlayeroneWin()
                 player1WinCounter += 1
                updateCounterX()
                clearBoardAFterWin()
                print("YOU WIN! X")
                matchCounterX += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 8  --X
                //               -X
                //               X
            else if (image0_2.image == UIImage(named: "Equis") && image1_1.image == UIImage(named: "Equis") && image2_0.image == UIImage(named: "Equis") ) {
                myAlertPlayeroneWin()
                 player1WinCounter += 1
                updateCounterX()
                clearBoardAFterWin()
                print("YOU WIN! X")
                matchCounterX += 1
                victoriaActual += 1
                updateActualMatch()
            }
            
            
            
            //posibilidad 9  OOO
            else if (image0_0.image == UIImage(named: "ccirculo") && image0_1.image == UIImage(named: "ccirculo") && image0_2.image == UIImage(named: "ccirculo") ) {
                myAlertplayerTwoWin()
                player2WinCounter += 1
                updateCounterO()
                clearBoardAFterWin()
                print("YOU WIN! O")
                matchCounterO += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 10---
                //              OOO
            else if (image1_0.image == UIImage(named: "ccirculo") && image1_1.image == UIImage(named: "ccirculo") && image1_2.image == UIImage(named: "ccirculo") ) {
                myAlertplayerTwoWin()
                 player2WinCounter += 1
                updateCounterO()
                clearBoardAFterWin()
                print("YOU WIN! O")
                matchCounterO += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 11---
                //              ---
                //              OOO
            else if (image2_0.image == UIImage(named: "ccirculo") && image2_1.image == UIImage(named: "ccirculo") && imagen2_2.image == UIImage(named: "ccirculo") ) {
                myAlertplayerTwoWin()
                 player2WinCounter += 1
                updateCounterO()
                clearBoardAFterWin()
                print("YOU WIN! O")
                matchCounterO += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 12 O
                //               O
                //               O
            else if (image0_0.image == UIImage(named: "ccirculo") && image1_0.image == UIImage(named: "ccirculo") && image2_0.image == UIImage(named: "ccirculo") ) {
                myAlertplayerTwoWin()
                 player2WinCounter += 1
                updateCounterO()
                clearBoardAFterWin()
                print("YOU WIN! O")
                matchCounterO += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 13 -O
                //               -O
                //               -O
            else if (image0_1.image == UIImage(named: "ccirculo") && image1_1.image == UIImage(named: "ccirculo") && image2_1.image == UIImage(named: "ccirculo") ) {
                myAlertplayerTwoWin()
                 player2WinCounter += 1
                updateCounterO()
                clearBoardAFterWin()
                print("YOU WIN! O")
                matchCounterO += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 14--O
                //              --O
                //              --O
            else if (image0_2.image == UIImage(named: "ccirculo") && image1_2.image == UIImage(named: "ccirculo") && imagen2_2.image == UIImage(named: "ccirculo") ) {
                myAlertplayerTwoWin()
                 player2WinCounter += 1
                updateCounterO()
                clearBoardAFterWin()
                print("YOU WIN! O")
                victoriaActual += 1
                matchCounterO += 1
                updateActualMatch()
                
            }
                //posibilidad 15 O
                //               -O
                //               --O
            else if (image0_0.image == UIImage(named: "ccirculo") && image1_1.image == UIImage(named: "ccirculo") && imagen2_2.image == UIImage(named: "ccirculo") ) {
                myAlertplayerTwoWin()
                 player2WinCounter += 1
                updateCounterO()
                clearBoardAFterWin()
                print("YOU WIN! O")
                matchCounterO += 1
                victoriaActual += 1
                updateActualMatch()
            }
                //posibilidad 16 --O
                //               -O
                //               O
            else if (image0_2.image == UIImage(named: "ccirculo") && image1_1.image == UIImage(named: "ccirculo") && image2_0.image == UIImage(named: "ccirculo") ) {
                myAlertplayerTwoWin()
                 player2WinCounter += 1
                updateCounterO()
                clearBoardAFterWin()
                print("YOU WIN! O")
                matchCounterO += 1
                victoriaActual += 1
                updateActualMatch()
            }else if button00.isEnabled == false && button01.isEnabled == false && button02.isEnabled == false && button10.isEnabled == false && button11.isEnabled == false && button12.isEnabled == false && button20.isEnabled == false && button21.isEnabled == false && button22.isEnabled == false{
                
                myAlertTie()
                clearBoardAFterWin()
        }
        breakGame()
    }
    
    func clearBoardAFterWin(){
        //Actualizar el label
        image0_0.image = UIImage(named: "whiteBackGround")
        image0_1.image = UIImage(named: "whiteBackGround")
        image0_2.image = UIImage(named: "whiteBackGround")
        image1_0.image = UIImage(named: "whiteBackGround")
        image1_1.image = UIImage(named: "whiteBackGround")
        image1_2.image = UIImage(named: "whiteBackGround")
        image2_0.image = UIImage(named: "whiteBackGround")
        image2_1.image = UIImage(named: "whiteBackGround")
        imagen2_2.image = UIImage(named: "whiteBackGround")
        
        button00.isEnabled = true
        button01.isEnabled = true
        button02.isEnabled = true
        button10.isEnabled = true
        button11.isEnabled = true
        button12.isEnabled = true
        button20.isEnabled = true
        button21.isEnabled = true
        button22.isEnabled = true
        
        auxiliar = 0
    }
    
    func myAlertPlayeroneWin(){
    let alert = UIAlertController(title: "Ganador", message: "Ha ganado \(Player1LabelText) con las X", preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
    //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
    
    self.present(alert, animated: true)
        
    }
    
    func myAlertplayerTwoWin(){
        let alert = UIAlertController(title: "Ganador", message: "Ha ganado \(Player2LabelText) con los O", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    func myAlertTie(){
        let alert = UIAlertController(title: "Empate", message: ":'v Han empatado", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    func myAlertFinishGame(){
        let alert = UIAlertController(title: "Juego Finalizado", message: "Terminaron las 5 partidas buen trabajo!!, (tenga piedad  profe :'v)", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Reiniciar", style: .default, handler: { (action: UIAlertAction!) in
            self.player2WinCounter = 0
            self.player1WinCounter = 0
        }))

        self.present(alert, animated: true)
    }
    
    func updateCounterX() -> String{
            switch  player1WinCounter {
            case 0:
                victoryPlayer1.text = "0"
            case 1:
                victoryPlayer1.text = "1"
            case 2:
                victoryPlayer1.text = "2"
                breakGame()
            case 3:
                victoryPlayer1.text = "3"
            case 4:
                victoryPlayer1.text = "4"
            case 5:
                victoryPlayer1.text = "5"
            default:
                print("something")
        }
            return victoryPlayer1.text!
    }
    
    func updateCounterO() -> String{
        switch  player2WinCounter {
        case 0:
            victoryPlayer2.text = "0"
        case 1:
            victoryPlayer2.text = "1"
            breakGame()
        case 2:
            victoryPlayer2.text = "2"
        case 3:
            victoryPlayer2.text = "3"
        case 4:
            victoryPlayer2.text = "4"
        case 5:
            victoryPlayer2.text = "5"
        default:
            print("something")
        }
        return victoryPlayer1.text!
    }
    
    func breakGame() {
        if matchCounterX == 5 {
            myAlertFinishGame()
            clearBoardAFterWin()
        }
        else if matchCounterO == 5 {
            myAlertFinishGame()
            clearBoardAFterWin()
        }
    }
    
    func updateActualMatch() {
        switch  victoriaActual {
        case 0:
            contadorDePartidaRealNoFake.text = "0"
        case 1:
             contadorDePartidaRealNoFake.text = "1"
            breakGame()
        case 2:
             contadorDePartidaRealNoFake.text = "2"
        case 3:
             contadorDePartidaRealNoFake.text = "3"
        case 4:
             contadorDePartidaRealNoFake.text = "4"
        case 5:
             contadorDePartidaRealNoFake.text = "5"
        case 6:
             contadorDePartidaRealNoFake.text = "6"
        case 7:
             contadorDePartidaRealNoFake.text = "7"
        case 8:
             contadorDePartidaRealNoFake.text = "8"
        case 9:
             contadorDePartidaRealNoFake.text = "9"
        case 10:
             contadorDePartidaRealNoFake.text = "10"
        default:
            print("something")
        }
    }
    
    var textTosave: String = ""
    
    func makingARequest(){
        Alamofire.request("https://57272q9fsh.execute-api.us-east-1.amazonaws.com/Deploy/randomnumber/realrandomnumber").responseJSON { response in
            print("Requested \(String(describing: response.request))")
            
            //            if let json = response.result.value {
            //                print("JSON \(json)")  //respuesta de json
            //            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data:  \(utf8Text) ")
                
                self.textTosave = utf8Text
                
            }
            
        }

    }
    func myAlertRandomInfo1(){
        let alert = UIAlertController(title: "Dato1", message: "Adrian Azpi was Here! hello from lambda in my cellphone", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    func myAlertRandomInfo2(){
        let alert = UIAlertController(title: "Dato2", message: "This is a little difficult, in to very short time :(", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    func myAlertRandomInfo3(){
        let alert = UIAlertController(title: "Dato3", message: "Adam Dajer is the best  professor :v", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    func myAlertRandomInfo4(){
        let alert = UIAlertController(title: "Dato4", message: "Adrian azpi was Here! hello from lambda in my cellphone", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    func myAlertRandomInfo5(){
        let alert = UIAlertController(title: "Dato5", message: "The Super Mario Bros. game is programmed in assembly language. The assembler 6502 was used to be specific", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    func myAlertRandomInfo6(){
        let alert = UIAlertController(title: "Dato6", message: "There are 803 Pokemons in the pokemon Universe", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    func myAlertRandomInfo7(){
        let alert = UIAlertController(title: "Dato7", message: "iOS it's better than Android. *Chnage my mind*", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    func myAlertRandomInfo8(){
        let alert = UIAlertController(title: "Dato8", message: "The mansion leves i'ts my favorite level in Banjoo-Kazooie video Game", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    func myAlertRandomInfo9(){
        let alert = UIAlertController(title: "Dato9", message: "The last friday we were watching movies on the screen u_u sorry", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    func displayMessage(){
        switch textTosave {
        case "1":
            myAlertRandomInfo1()
        case "2":
            myAlertRandomInfo2()
        case "3":
            myAlertRandomInfo3()
        case "4":
            myAlertRandomInfo4()
        case "5":
            myAlertRandomInfo5()
        case "6":
            myAlertRandomInfo6()
        case "7":
            myAlertRandomInfo7()
        case "8":
            myAlertRandomInfo8()
        case "9":
            myAlertRandomInfo9()
        default:
            print("another menssage")
        }
    }
}
//Player 1 = true
//player 2 = false
