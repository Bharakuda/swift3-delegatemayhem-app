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
    
    var delegate: DataSentDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
        if delegate != nil {
            if dataEntryTextField != nil {
                let data = dataEntryTextField.text
                delegate?.userEnteredData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }

}
