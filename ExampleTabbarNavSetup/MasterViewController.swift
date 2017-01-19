//
//  MasterViewController.swift
//  ExampleTabbarNavSetup
//
//  Created by Ben Smith on 18/01/17.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import Foundation
import UIKit

class MasterViewController: UIViewController
{

    var login = false
    override func viewWillAppear(_ animated: Bool) {
    
    
        super.viewWillAppear(animated)
        
        if !login {
            
            //programmatically changing th 
            let story = UIStoryboard(name: "Login", bundle: nil)
            let view = story.instantiateViewController(withIdentifier: "loginView") as! AViewController
            view.delegate = self
            navigationController?.present(view, animated: false, completion: {})
        } else {
            performSegue(withIdentifier: "login", sender: self)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is AViewController {
            let Controller = segue.destination as! AViewController
            Controller.delegate = self
        }
        print("Segue : \(segue.destination)")
    }
}
