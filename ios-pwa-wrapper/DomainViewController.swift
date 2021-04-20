//
//  DomainViewController.swift
//  ios-pwa-wrapper
//
//  Created by MIHIR PIPERMITWALA on 20/04/21.
//  Copyright © 2021 Martin Kainzbauer. All rights reserved.
//

import UIKit

class DomainViewController: UIViewController {
    @IBOutlet weak var textFieldDomainName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func buttonNextHandler(_ sender: UIButton) {
        if self.verifyUrl(urlString: textFieldDomainName.text ?? "") {
            guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
                debugPrint("Something went wrong")
                return
            }
            viewController.urlString = textFieldDomainName.text ?? ""
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
