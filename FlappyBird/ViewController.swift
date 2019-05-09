//
//  ViewController.swift
//  FlappyBird
//
//  Created by 菊池 玲花 on 2019/05/08.
//  Copyright © 2019 reika.kikuchi. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // SKViewに型を変換する
        let  skView = self.view as! SKView
        
        // FPSを表示する
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size)
        
        // ビューにシーンを表示する
        skView.presentScene(scene)        
    
    }
    // ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }

}

