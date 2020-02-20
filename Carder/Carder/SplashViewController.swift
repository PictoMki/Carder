//
//  ViewController.swift
//  Carder
//
//  Created by 井上知貴 on 2020/02/18.
//  Copyright © 2020 井上知貴. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var titleImageView2: UIImageView!
    @IBOutlet weak var titleImageView3: UIImageView!
    @IBOutlet weak var titleImageView4: UIImageView!
    @IBOutlet weak var titleImageView5: UIImageView!
    @IBOutlet weak var titleImageView6: UIImageView!
    @IBOutlet weak var titleImageView7: UIImageView!
    @IBOutlet weak var titleImageView8: UIImageView!
    @IBOutlet weak var titleImageView9: UIImageView!
    @IBOutlet weak var titleImageView10: UIImageView!
    @IBOutlet weak var titleImageView11: UIImageView!
    @IBOutlet weak var titleImageView12: UIImageView!
    @IBOutlet weak var titleImageView13: UIImageView!
    @IBOutlet weak var titleImageView14: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.alpha = 0
        self.titleImageView.alpha = 0
        self.titleImageView2.alpha = 0
        self.titleImageView3.alpha = 0
        self.titleImageView4.alpha = 0
        self.titleImageView5.alpha = 0
        self.titleImageView6.alpha = 0
        self.titleImageView7.alpha = 0
        self.titleImageView8.alpha = 0
        self.titleImageView9.alpha = 0
        self.titleImageView10.alpha = 0
        self.titleImageView11.alpha = 0
        self.titleImageView12.alpha = 0
        self.titleImageView13.alpha = 0
        self.titleImageView14.alpha = 0
        for (index,image) in images.enumerated() {
            let i = String(index + 1)
            image.accessibilityIdentifier = "torannpu-illust\(i)"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 0.5,
                       delay: 0.5,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView.alpha = 1
                        self.titleImageView.center.x -= 800
                        self.titleImageView.center.y -= 800
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 0.6,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView2.alpha = 1
                        self.titleImageView2.center.x -= 532
                        self.titleImageView2.center.y -= 800
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 0.7,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView3.alpha = 1
                        self.titleImageView3.center.x -= 266
                        self.titleImageView3.center.y -= 800
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 0.8,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView4.alpha = 1
                        self.titleImageView4.center.y -= 800
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 0.9,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView5.alpha = 1
                        self.titleImageView5.center.x += 266
                        self.titleImageView5.center.y -= 800
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 1.0,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView6.alpha = 1
                        self.titleImageView6.center.x += 532
                        self.titleImageView6.center.y -= 800
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 1.1,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView7.alpha = 1
                        self.titleImageView7.center.x += 800
                        self.titleImageView7.center.y -= 800
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 1.2,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView8.alpha = 1
                        self.titleImageView8.center.x += 800
                        self.titleImageView8.center.y -= 532
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 1.3,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView9.alpha = 1
                        self.titleImageView9.center.x += 800
                        self.titleImageView9.center.y -= 266
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 1.4,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView10.alpha = 1
                        self.titleImageView10.center.x += 800
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 1.5,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView11.alpha = 1
                        self.titleImageView11.center.x += 800
                        self.titleImageView11.center.y += 266
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 1.6,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView12.alpha = 1
                        self.titleImageView12.center.x += 800
                        self.titleImageView12.center.y += 532
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 1.7,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView13.alpha = 1
                        self.titleImageView13.center.x += 800
                        self.titleImageView13.center.y += 800
            }, completion: { (Bool) in
                
        })
        UIView.animate(withDuration: 0.5,
                       delay: 2.3,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView14.alpha = 1
                        self.titleImageView14.center.y += 800
            }, completion: { (Bool) in
                self.titleImageView.alpha = 0
                self.titleImageView2.alpha = 0
                self.titleImageView3.alpha = 0
                self.titleImageView4.alpha = 0
                self.titleImageView5.alpha = 0
                self.titleImageView6.alpha = 0
                self.titleImageView7.alpha = 0
                self.titleImageView8.alpha = 0
                self.titleImageView9.alpha = 0
                self.titleImageView10.alpha = 0
                self.titleImageView11.alpha = 0
                self.titleImageView12.alpha = 0
                self.titleImageView13.alpha = 0
                self.titleImageView14.alpha = 0
        })
        UIView.animate(withDuration: 0.5,
                       delay: 2.8,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleImageView.alpha = 0
                        self.titleImageView2.alpha = 0
                        self.titleImageView3.alpha = 0
                        self.titleImageView4.alpha = 0
                        self.titleImageView5.alpha = 0
                        self.titleImageView6.alpha = 0
                        self.titleImageView7.alpha = 0
                        self.titleImageView8.alpha = 0
                        self.titleImageView9.alpha = 0
                        self.titleImageView10.alpha = 0
                        self.titleImageView11.alpha = 0
                        self.titleImageView12.alpha = 0
                        self.titleImageView13.alpha = 0
                        self.titleImageView14.alpha = 0
            }, completion: { (Bool) in
        })
        UIView.animate(withDuration: 1.5,
                       delay: 3.3,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        self.titleLabel.alpha = 1
                        self.titleLabel.transform = CGAffineTransform(scaleX: 2, y: 2)
            }, completion: { (Bool) in
                self.transitionToNextView(ViewController: self, Identifier: "StartViewController")
        })
        
        
    }
    
    func transitionToNextView(ViewController:UIViewController,Identifier:String) {
        let storyboard: UIStoryboard = ViewController.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: Identifier)
        ViewController.present(second, animated: true, completion: nil)
    }


}

