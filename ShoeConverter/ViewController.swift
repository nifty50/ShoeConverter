//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Ansel Adams on 1/31/16.
//  Copyright © 2016 Ansel Adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLable: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let sizeFromTextField = Int(mensShoeSizeTextField.text!)!
        let conversionConstant = 30
        mensConvertedShoeSizeLable.hidden = false
        mensConvertedShoeSizeLable.text = "\(sizeFromTextField + conversionConstant) in European shoe size"
        mensShoeSizeTextField.resignFirstResponder()
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text! as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLable.hidden = false
        womensConvertedShoeSizeLable.text = "\(sizeFromTextField + conversionConstant) in Euro shoe size"
        womensShoeSizeTextField.resignFirstResponder()
    }
}

