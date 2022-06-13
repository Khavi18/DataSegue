//
//  ViewController2.swift
//  DataSegue
//
//  Created by khavishini suresh on 12/06/2022.
//

import UIKit

protocol CanReceive {
    func passDataBack(data: String)
}
class ViewController2: UIViewController {

    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var label2: UILabel!
    
    var delegate:CanReceive?
    
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label2.text = data
    }
    
    @IBAction func passDataBackBtnPressed(_ sender: Any) {
        
        delegate?.passDataBack(data: textField2.text!)
        dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
}
