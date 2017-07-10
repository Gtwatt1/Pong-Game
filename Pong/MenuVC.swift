//
//  MenuVC.swift
//  Pong
//
//  Created by Zone 3 on 4/19/17.
//  Copyright © 2017 Zone 3. All rights reserved.
//

import UIKit

enum gameType{
    case easy
    case medium
    case hard
    case player2
}

class MenuVC: UIViewController {

    @IBAction func easyButton(_ sender: Any) {
        
        moveToGame(game: .easy)
    }
    
    @IBAction func mediumButtom(_ sender: Any) {
        moveToGame(game: .medium)
    }
    @IBAction func player2(_ sender: Any) {
        moveToGame(game: .hard)
    }
    
    @IBAction func hardButton(_ sender: Any) {
        moveToGame(game: .player2)
    }
    
    
    func moveToGame(game : gameType){
        let gameVC = self.storyboard?.instantiateViewController(withIdentifier: "gameVC") as! GameViewController
        
        self.navigationController?.pushViewController(gameVC, animated: true)
        currentGameType = game
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
