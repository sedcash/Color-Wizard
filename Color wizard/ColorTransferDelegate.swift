//
//  ColorTransferDelegate.swift
//  Color wizard
//
//  Created by Sedrick Cashaw Jr on 12/19/17.
//  Copyright © 2017 Sedrick Cashaw Jr. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChooseColor(color: UIColor, withName colorName: String)
}
