//
//  ViewController.swift
//  coordinate
//
//  Created by miyazawaryohei on 2020/10/09.
//

import UIKit

class ViewController: UIViewController {
    
    //変数の準備
    let photoSize = CGSize(width: 320, height: 240)
    let photoOrigin = CGPoint(x: 27, y: 100)
    let smallFrame = CGRect(x: 27, y: 100, width: 160, height: 120)
    var bigFrame:CGRect?
    
    
    @IBOutlet var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //表示モードの設定
        image.contentMode = .scaleAspectFill
        //写真フレームをsmallFrameで表示する
        image.frame = smallFrame
        //ビューのサイズに合わせたbigFrameを計算する
        let photoWideth = view.frame.width - 27*2
        let photoHeight = 240/320*photoWideth
        let photoSize = CGSize(width: photoWideth, height: photoHeight)
        bigFrame = CGRect(origin: photoOrigin, size: photoSize)
        
    }
    
    @IBAction func changeFrame(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        switch index {
        case 0 :
            image.frame = smallFrame
        case 1 :
            image.frame = bigFrame!
        default:
            image.frame = bigFrame!
        }
    }
}

