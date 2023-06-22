//
//  NextViewController.swift
//  screen transition
//
//  Created by 持田ゆうり on 2023/06/20.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet var backButton: UIButton!
    @IBOutlet var label: UILabel!
    
    var text: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = text

    }
    

}
