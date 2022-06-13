//
//  ViewController.swift
//  DataSegue
//
//  Created by khavishini suresh on 12/06/2022.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    
    func passDataBack(data: String) {
        label1.text = data
    }

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textField1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextbtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sendDataForwards" {
            
            let secondVC = segue.destination as! ViewController2
            secondVC.data = textField1.text!
            secondVC.delegate = self
        }
    }
    


}

