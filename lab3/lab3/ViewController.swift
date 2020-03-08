//
//  ViewController.swift
//  lab3
//
//  Created by Сауле Досымбекова on 3/7/20.
//  Copyright © 2020 Сауле Досымбекова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      
    }

    
    @IBAction func createFrame(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

                    guard

             let selectVC = storyboard.instantiateViewController(identifier: "createview") as? CreateViewController

                    else { return }

        navigationController?.pushViewController(selectVC, animated: true)
        
    }
    

}

