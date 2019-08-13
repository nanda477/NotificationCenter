//
//  SecondViewController.swift
//  DelegateMethodDemo
//
//  Created by Ramanan D2V on 13/8/19.
//  Copyright © 2019 D2V Software Solutions pvt ltd. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
   

    @IBOutlet weak var commentsTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNav()
    }
    
    func setupNav() {
        self.title = "Select Address type"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(dismissVC))
    }
    
   @objc func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    

    
    @IBAction func googleAction(_ sender: Any) {
        
        guard commentsTF.text != "" else {
            print("Enter comments to proceed")
            return
        }
        
    }
    @IBAction func manualAction(_ sender: Any) {
        
        guard commentsTF.text != "" else {
            print("Enter comments to proceed")
            return
        }
        
        let addressVC = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController_ID") as! ThirdViewController
        addressVC.cmts = commentsTF.text!
        let aNav = UINavigationController(rootViewController: addressVC)
        self.present(aNav, animated: true, completion: nil)
        
    }

}
