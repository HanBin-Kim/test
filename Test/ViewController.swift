//
//  ViewController.swift
//  Test
//
//  Created by USER on 2020/07/22.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit
import FBSDKLoginKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: Any) {
        ApplicationDelegate.initializeSDK(nil)
        let manager = LoginManager()
        manager.logIn(permissions: [.publicProfile], viewController: self) { (result) in
            print(result)
        }
    }

}

