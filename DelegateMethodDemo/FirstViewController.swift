//
//  ViewController.swift
//  DelegateMethodDemo
//
//  Created by Ramanan D2V on 13/8/19.
//  Copyright © 2019 D2V Software Solutions pvt ltd. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var mobileTF: UITextField!
    @IBOutlet weak var addressTV: UITextView!
    @IBOutlet weak var remarksTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "User Details"
        
         NotificationCenter.default.addObserver(self, selector: #selector(commentData), name: NSNotification.Name(rawValue: "AddressNotif"), object: nil)
        
    }
    
    
    @IBAction func selectAddressAction(_ sender: Any) {
        
        let commentVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController_ID") as! SecondViewController
        let aNav = UINavigationController(rootViewController: commentVC)
        self.present(aNav, animated: true, completion: nil)
    }
    
    
    //MARK: Implement Address Notification

    @objc func commentData(noti: NSNotification) {
        let text = (noti.object as? NSDictionary ?? [:]).value(forKey: "address") as? String
       self.addressTV.text = text
    }
    

}

