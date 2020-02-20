//
//  StartViewController.swift
//  Carder
//
//  Created by 井上知貴 on 2020/02/18.
//  Copyright © 2020 井上知貴. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var limitCountLabel: UILabel!
    var limitCount:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
        button2.layer.cornerRadius = 10
        limitCount = swipeLimitCount
        limitCountLabel.text = String(limitCount)
        // Do any additional setup after loading the view.
        if (UserDefaults.standard.object(forKey: "imageName") != nil) {
            let name = UserDefaults.standard.object(forKey: "imageName") as! [String]
            print(name.count)
        }
        
    }
    @IBAction func tapDown(_ sender: Any) {
        if (limitCount == 0) {
            return
        } else {
            limitCount -= 1
            limitCountLabel.text = String(limitCount)
        }
    }
    
    @IBAction func tapUp(_ sender: Any) {
        if (limitCount == 2) {
            return
        }else{
            limitCount += 1
            limitCountLabel.text = String(limitCount)
        }
    }
    
    @IBAction func tapButton(_ sender: Any) {
        swipeLimitCount = limitCount
        transitionToNextView(ViewController: self, Identifier: "GameViewController")
    }
    
    @IBAction func resetCard(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "imageName")
        let dialog = UIAlertController(title: "リセット完了", message: "今まで出たカードをリセットしました。", preferredStyle: .alert)
        dialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(dialog, animated: true, completion: nil)
    }
    
    func transitionToNextView(ViewController:UIViewController,Identifier:String) {
        let storyboard: UIStoryboard = ViewController.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: Identifier)
        ViewController.present(second, animated: true, completion: nil)
    }
    
}
