//
//  ViewController.swift
//  practice01
//
//  Created by FISH on 2019/3/10.
//  Copyright © 2019 FISH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func changeSlider(_ sender: UISlider) {
        let font = inputText.font!
        let newFont = font.withSize(CGFloat(sender.value))
        inputText.font = newFont
        labelText.font = newFont
        fontSizeLabel.text = "字體大小： " + String(format: "%.2f", sender.value)
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
//        print(sender.text!)
        let inputTextCount = sender.text!.count
//        print(inputTextCount)
        labelText.text = "字數：\(inputTextCount)"
    }
    
    @IBAction func dismissKeyboard(_ sender: Any) {
    }
    @IBAction func viewTapped(_ sender: Any) {
        view.endEditing(true)
    }
    
}

