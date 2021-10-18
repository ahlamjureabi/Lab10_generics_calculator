//
//  RoundBotton.swift
//  Test1
//
//  Created by Ahlam Ahlam on 12/03/1443 AH.
//

import UIKit

class RoundBotton: UIButton {

    @IBInspectable var roundButton : Bool = false {
            didSet{
                if roundButton {
                    layer.cornerRadius = frame.height / 2
                }
            }
        }
        override func prepareForInterfaceBuilder() {
            if roundButton {
                layer.cornerRadius = frame.height / 2
            }
        }
}
