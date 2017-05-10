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
        PozzitoManager(apiKey: "5a43b3a9bbf74bcc89724ba5cbd3a9de",
                       appId: "rota6jbC2Z-lMKh5cI118w~~") { (serviceError) in
                        if serviceError == nil {
                            SupportUI(initialViewController: self)
                        } else {
                            let alert = UIAlertController(title: "Error", message: serviceError!.customDescription, preferredStyle: .alert)
                            let action = UIAlertAction(title: "Dismiss", style: .default, handler: { a in
                                alert.dismiss(animated: true, completion: nil)
                            })
                            alert.addAction(action)
                            self.present(alert, animated: true, completion: nil)

                        }

        }
    }


    @IBAction func clearUserDataBtnPressed(_ sender: UIButton) {
        PozzitoManager.shared.clearUserData()
    }
}


