//
//  ColorPickerVC.swift
//  Color wizard
//
//  Created by Sedrick Cashaw Jr on 12/19/17.
//  Copyright © 2017 Sedrick Cashaw Jr. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton){
        if delegate != nil{
            delegate?.userDidChooseColor(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
