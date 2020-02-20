//
//  ResultViewController.swift
//  Carder
//
//  Created by 井上知貴 on 2020/02/19.
//  Copyright © 2020 井上知貴. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var titleLabel1: UILabel!
    @IBOutlet weak var titleLabel2: UILabel!
    @IBOutlet weak var titleLabel3: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel1.text = ""
        titleLabel2.text = ""
        titleLabel3.text = ""
        imageView1.image = UIImage()
        imageView2.image = UIImage()
        imageView3.image = UIImage()
        button.layer.cornerRadius = 10
        print(resultImage)
        
        switch resultImage.count {
        case 1:
            titleLabel2.text = "1枚目"
            imageView2.image = resultImage[0]
        case 2:
            titleLabel1.text = "1枚目"
            imageView1.image = resultImage[0]
            titleLabel3.text = "2枚目"
            imageView3.image = resultImage[1]
        default:
            titleLabel1.text = "1枚目"
            imageView1.image = resultImage[0]
            titleLabel2.text = "3枚目"
            imageView2.image = resultImage[2]
            titleLabel3.text = "2枚目"
            imageView3.image = resultImage[1]
        }
    }

    @IBAction func backButton(_ sender: Any) {
        var imageName:[String] = []
        let userDefaults = UserDefaults.standard
        if (userDefaults.object(forKey: "imageName") != nil) {
            imageName = userDefaults.object(forKey: "imageName") as! [String]
        }
        for imgName in resultImage {
            print("いってる")
            print(imgName.accessibilityIdentifier)
            if let name = imgName.accessibilityIdentifier {
                print(name)
                imageName.append(name)
                userDefaults.set(imageName, forKey: "imageName")
                userDefaults.synchronize()
            }
            
        }
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
}
