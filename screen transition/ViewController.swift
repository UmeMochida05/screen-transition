//
//  ViewController.swift
//  screen transition
//
//  Created by 持田ゆうり on 2023/06/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nextButton: UIButton!
    @IBOutlet weak var textfield: UITextField!
    
    @IBAction func toView(segue: UIStoryboardSegue) {
       }
    
    override func viewDidLoad() {
        guard let text = textfield.text else { return }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextViewController = storyboard.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        nextViewController.text = text
        super.viewDidLoad()
        
    }
    
    @IBAction func nextButton (_ sender: Any) {
        performSegue(withIdentifier: "toNext", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        if segue.identifier == "toNext" {
            let nextViewController = segue.destination as! NextViewController
            nextViewController.text = textfield.text ?? ""
        }
        
    }
    

    
}
