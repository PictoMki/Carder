//
//  GameViewController.swift
//  Carder
//
//  Created by 井上知貴 on 2020/02/18.
//  Copyright © 2020 井上知貴. All rights reserved.
//

import UIKit
import Koloda

var resultImage:[UIImage] = []
var swipeCount:Int = 0
var swipeLimitCount:Int = 1
var limitSwitch:Bool = false
var images:[UIImage] = [
    UIImage(named: "torannpu-illust1")!,
    UIImage(named: "torannpu-illust2")!,
    UIImage(named: "torannpu-illust3")!,
    UIImage(named: "torannpu-illust4")!,
    UIImage(named: "torannpu-illust5")!,
    UIImage(named: "torannpu-illust6")!,
    UIImage(named: "torannpu-illust7")!,
    UIImage(named: "torannpu-illust8")!,
    UIImage(named: "torannpu-illust9")!,
    UIImage(named: "torannpu-illust10")!,
    UIImage(named: "torannpu-illust11")!,
    UIImage(named: "torannpu-illust12")!,
    UIImage(named: "torannpu-illust13")!,
    UIImage(named: "torannpu-illust13")!,
    UIImage(named: "torannpu-illust14")!,
    UIImage(named: "torannpu-illust15")!,
    UIImage(named: "torannpu-illust16")!,
    UIImage(named: "torannpu-illust17")!,
    UIImage(named: "torannpu-illust18")!,
    UIImage(named: "torannpu-illust19")!,
    UIImage(named: "torannpu-illust20")!,
    UIImage(named: "torannpu-illust21")!,
    UIImage(named: "torannpu-illust22")!,
    UIImage(named: "torannpu-illust23")!,
    UIImage(named: "torannpu-illust24")!,
    UIImage(named: "torannpu-illust25")!,
    UIImage(named: "torannpu-illust26")!,
    UIImage(named: "torannpu-illust27")!,
    UIImage(named: "torannpu-illust28")!,
    UIImage(named: "torannpu-illust29")!,
    UIImage(named: "torannpu-illust30")!,
    UIImage(named: "torannpu-illust31")!,
    UIImage(named: "torannpu-illust32")!,
    UIImage(named: "torannpu-illust33")!,
    UIImage(named: "torannpu-illust34")!,
    UIImage(named: "torannpu-illust35")!,
    UIImage(named: "torannpu-illust36")!,
    UIImage(named: "torannpu-illust37")!,
    UIImage(named: "torannpu-illust38")!,
    UIImage(named: "torannpu-illust39")!,
    UIImage(named: "torannpu-illust40")!,
    UIImage(named: "torannpu-illust41")!,
    UIImage(named: "torannpu-illust42")!,
    UIImage(named: "torannpu-illust43")!,
    UIImage(named: "torannpu-illust44")!,
    UIImage(named: "torannpu-illust45")!,
    UIImage(named: "torannpu-illust46")!,
    UIImage(named: "torannpu-illust47")!,
    UIImage(named: "torannpu-illust48")!,
    UIImage(named: "torannpu-illust49")!,
    UIImage(named: "torannpu-illust50")!,
    UIImage(named: "torannpu-illust51")!,
    UIImage(named: "torannpu-illust52")!,
    UIImage(named: "torannpu-illust53")!
]

extension Array where Element: Equatable {
    mutating func remove(value: Element) {
        if let i = self.index(of: value) {
            self.remove(at: i)
        }
    }
}

class GameViewController: UIViewController,KolodaViewDelegate,KolodaViewDataSource {

    @IBOutlet weak var kolodaView: KolodaView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        // 配列の中身をシャッフル
        images.shuffle()
        super.viewDidLoad()
        var imageName:[String] = []
        let userDefaults = UserDefaults.standard
        if (userDefaults.object(forKey: "imageName") != nil) {
            imageName = userDefaults.object(forKey: "imageName") as! [String]
            for img in imageName {
                let UIImageNamed = UIImage(named: img)
                images.remove(value: UIImageNamed!)
            }
            
        }
        // delegateとdataSorcseを設定
        kolodaView.dataSource = self
        kolodaView.delegate = self
        // ボタンを角丸
        button.layer.cornerRadius = 10
        // スワイプ数をリセット
        swipeCount = 0
        resultImage = []
        resultImage.append(images[0])
    }
    
    override func viewDidLayoutSubviews() {
        if (limitSwitch) {
            button.setTitle("スタート画面に戻る", for: .normal)
        }else{
            button.setTitle("結果を見る", for: .normal)
        }
    }
    
    func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
        return images.count
    }

    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .fast
    }

    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        return UIImageView(image: images[index])
    }

    //darag中に呼ばれる
    func koloda(_ koloda: KolodaView, shouldDragCardAt index: Int) -> Bool {
        return true
    }
    
    func koloda(_ koloda: KolodaView, shouldSwipeCardAt index: Int, in direction: SwipeResultDirection) -> Bool {
        if (limitSwitch) {
            return true
        }else{
            if (swipeLimitCount == swipeCount) {
                return false
            }
            return true
        }
    }

    //dtagの方向など
    func koloda(_ koloda: KolodaView, didSwipeCardAt index: Int, in direction: SwipeResultDirection) {
        if (!limitSwitch) {
            resultImage.append(images[index + 1])
            swipeCount += 1
        }
        
    }

    //likeへ
    @IBAction func cardGoToLike() {
        if (limitSwitch) {
            self.dismiss(animated: true, completion: nil)
        }else{
            transitionToNextView(ViewController: self, Identifier: "ResultViewController")
        }
        
        
    }
    
    func transitionToNextView(ViewController:UIViewController,Identifier:String) {
        let storyboard: UIStoryboard = ViewController.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: Identifier)
        ViewController.present(second, animated: true, completion: nil)
    }

    
}
