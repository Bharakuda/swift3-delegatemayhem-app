//
//  ReceivingVC.swift
//  DelegateMayhem
//
//  Created by Alisa Koprić on 01/12/16.
//  Copyright © 2016 Alisa Koprić. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    @IBOutlet weak var receivingTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func userEnteredData(data: String) {
        receivingTextLabel.text = data
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }
    
}

