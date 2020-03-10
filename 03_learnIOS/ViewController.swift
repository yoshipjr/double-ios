//
//  ViewController.swift
//  03_learnIOS
//
//  Created by 北原義久 on 2020/03/10.
//  Copyright © 2020 北原義久. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController {
 
    // ラベルのインスタンス生成

    
    
    
    @IBOutlet weak var labelImage: UILabel!
    @IBOutlet weak var labeltest: UILabel!
    @IBOutlet weak var buttonTest: UIButton!
    @IBOutlet weak var buttonImage: UIButton!
    
    let image0:UIImage = UIImage(named:"fijiの島.jpg")!
    let image1:UIImage = UIImage(named:"sample.jpg")!
    
    var count = 0
    
       override func viewDidLoad() {
           super.viewDidLoad()
    
           labeltest.text = "Swift Test"
    
           buttonTest.setTitle("Button",for:UIControl.State.normal)
    
       }
    
    @IBAction func buttonTapped(_ sender: Any) {
           count += 1
           if(count%2 == 0){
               labeltest.text = "Swift Test"
           }
           else{
               labeltest?.text = "tapped !"
           }
       }
    
    @IBAction func buttonImageTapped(_ sender: Any) {
        count += 1
        labelImage.text = "ただいまのカウント数は\(count)回"
        if(count%2 == 0){
            buttonImage.setImage(image0, for: .normal)
        }else if(count%3 == 0){
            buttonImage.setImage(image1, for: .normal)
        }
    }
}

