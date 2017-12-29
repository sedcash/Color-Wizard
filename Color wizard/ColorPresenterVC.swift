//
//  ViewController.swift
//  Color wizard
//
//  Created by Sedrick Cashaw Jr on 12/19/17.
//  Copyright © 2017 Sedrick Cashaw Jr. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidChooseColor(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC"{
            guard let colorPickerVc = segue.destination as?
                ColorPickerVC else { return }
            colorPickerVc.delegate = self
        }
    }


}

