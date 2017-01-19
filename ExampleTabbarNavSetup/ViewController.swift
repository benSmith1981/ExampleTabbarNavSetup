//
//  ViewController.swift
//  ExampleTabbarNavSetup
//
//  Created by Ben Smith on 18/01/17.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    var delegate : MasterViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didLogin(_ sender: AnyObject) {
        delegate?.login = true
//        dismiss(animated: true, completion: nil)
        navigationController?.popToRootViewController(animated: true)
    }
}

