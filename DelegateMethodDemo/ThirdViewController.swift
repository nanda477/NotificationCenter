//
//  ThirdViewController.swift
//  DelegateMethodDemo
//
//  Created by Ramanan D2V on 13/8/19.
//  Copyright © 2019 D2V Software Solutions pvt ltd. All rights reserved.
//

import UIKit


class ThirdViewController: UIViewController {
    


    @IBOutlet weak var dsTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var stateTF: UITextField!
    @IBOutlet weak var pincodeTF: UITextField!
    
    var cmts: String?
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNav()
    }
    
    func setupNav() {
        self.title = "Manual Address"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(dismissVC))

    }
    
    @objc func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func continueAction(_ sender: Any) {
    
        let address = "\(dsTF.text!),\(cityTF.text!),\(stateTF.text!),\(pincodeTF.text!)" + " - " + cmts!
        
        let dict = ["address"  : address]
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "AddressNotif"), object: dict)
        
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)

    }
    
}
