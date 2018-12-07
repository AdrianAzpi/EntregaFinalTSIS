//
//  namesViewController.swift
//  CatGameTSIS2019-1
//
//  Created by Adrian on 11/15/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class namesViewController: UIViewController {
    
    @IBOutlet weak var player1TextField: UITextField!
    @IBOutlet weak var player2TextField: UITextField!
    
    @IBOutlet weak var buttonNames: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.barTintColor = UIColor.init(named: "ColorBlue")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
        let player1 = player1TextField.text
        let player2 = player2TextField.text
        if (player1TextField.text?.isEmpty ?? false || player2TextField.text?.isEmpty ?? false){
            sender.isEnabled = true
        }else {
            
            performSegue(withIdentifier: "names", sender: self)
            
        }
    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender:   AnyObject?) {
//        var PC : SecondSecondViewController = segue.destinationViewController as! SecondSecondViewController
//        PC.label1.text = Label.text!
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var PC : CatGameViewController = segue.destination as! CatGameViewController
        PC.Player1LabelText = player1TextField.text!
        var PC2 : CatGameViewController = segue.destination as! CatGameViewController
        PC2.Player2LabelText = player2TextField.text!
    }
}
