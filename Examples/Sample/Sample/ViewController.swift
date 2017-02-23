//
//  ViewController.swift
//  Sample
//
//  Created by Martino Mamic on 21/02/2017.
//  Copyright © 2017 Martino Mamic. All rights reserved.
//

import Pozzito
import PozzitoUI
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startSupportBtnPressed(_ sender: UIButton) {
        PozzitoManager(apiKey: "2752793aa33b4191b4ea0237884c46d2",
                       appId: "640jek4u4lsGEE9EcL4GVg~~") { (serviceError) in
            if serviceError == nil {
                SupportUI(initialViewController: self)
            }
        }
    }


    @IBAction func clearUserDataBtnPressed(_ sender: UIButton) {
        PozzitoManager.shared.clearUserData()
    }
}


