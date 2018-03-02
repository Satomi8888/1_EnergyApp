//
//  ViewController.swift
//  1_EnergyApp
//
//  Created by 遠山　聡美 on 2018/02/28.
//  Copyright © 2018年 Simple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var img = UIImage(named:"picture")!

    @IBOutlet weak var label0: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBAction func changeButton(_ sender: Any) {
        //ボタンを押した時の処理
        if let weight = Int(textField.text!) {
            if weight > 100 {
                label1.text = "100キロ以上の人は使えないよ"
                label2.text = ""
                label3.text = ""
            } else {
                let energy = weight * 299792458 * 299792458
                let nuclear = energy / (1000000 * 1000 * 3600 * 24 * 365)
                label1.text = "あなたが持っているエネルギーは"
                label2.text = "\(energy)Jです"
                label3.text = "原発\(nuclear)こ分だよ"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.image = img
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}

