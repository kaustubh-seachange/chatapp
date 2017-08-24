//
//  ViewController.swift
//  ChatApp
//
//  Created by Kaustubh on 22/08/2017.
//  Copyright © 2017 Kaustubh. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController  {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        INPreferences.requestSiriAuthorization{ (status: INSiriAuthorizationStatus) in
            switch (status){
                case INSiriAuthorizationStatus.authorized:
                    print("Siri is Authorized")
                    break
                case INSiriAuthorizationStatus.denied:
                    print("Siri is Denied")
                    break
                default:
                    print("Siri is set to default.")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testMethod() -> Void {
        print("testing the logging.");
    }
}

