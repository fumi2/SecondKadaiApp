//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Fumitaka Hijino on 2018/01/27.
//  Copyright © 2018年 Fumitaka Hijino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let helloViewController:HelloViewController = segue.destination as! HelloViewController
        
        // テキストフィールドに未入力の場合、名前を「名無し」にする
        if textField.text! == "" {
            helloViewController.name = "名無し"
        }
        else {
       // テキストフィールドに入力した名前を渡す
        helloViewController.name = textField.text!
        }
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

}

