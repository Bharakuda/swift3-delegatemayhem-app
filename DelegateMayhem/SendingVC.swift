//
//  SendingVC.swift
//  DelegateMayhem
//
//  Created by Alisa Koprić on 01/12/16.
//  Copyright © 2016 Alisa Koprić. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userEnteredData(data: String)
}

class SendingVC: UIViewController {

    @IBOutlet weak var dataEntryTextField: UITextField!
    
    var delegate: DataSentDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
        if delegate != nil {
            if !(dataEntryTextField.text?.isEmpty)! {
                let data = dataEntryTextField.text
                delegate?.userEnteredData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
        hideKeyboard()
    }
    
    func hideKeyboard() {
        view.endEditing(true)
    }

}
