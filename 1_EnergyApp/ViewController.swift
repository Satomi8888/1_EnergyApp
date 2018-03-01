//
//  ViewController.swift
//  1_EnergyApp
//
//  Created by 遠山　聡美 on 2018/02/28.
//  Copyright © 2018年 Simple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var img = UIImage(named:"picture")!

    @IBOutlet weak var label0: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    //空、0、桁が多い時にアプリが落ちないようにする
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBAction func changeButton(_ sender: Any) {
        if let weight = textField.text {
            let energy = Int(weight)! * 299792458 * 299792458
            let nuclear = energy / (1000000 * 1000 * 3600 * 24 * 365)
            label2.text = "\(energy)Jです"
            label3.text = "原発\(nuclear)こ分だよ"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        myImageView.image = img
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}

