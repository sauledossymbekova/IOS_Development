//
//  CreateViewController.swift
//  lab3
//
//  Created by Сауле Досымбекова on 3/7/20.
//  Copyright © 2020 Сауле Досымбекова. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    
    @IBOutlet weak var widthTF: UITextField!
    @IBOutlet weak var yTF: UITextField!
    @IBOutlet weak var xTF: UITextField!
    @IBOutlet weak var heightTF: UITextField!
     var color:UIColor!
     var chosenView:UIView?
     
    @IBAction func colorChosen(_ sender: UIButton) {

            guard
                let colorPicked = sender.backgroundColor
                else {return}
        color = colorPicked
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - creating a
        /*let  box = UIView(frame: <#T##CGRect#>(x:CGFloat(20), y:CGFloat(20), width: CGFloat(100), height: CGFloat(100)))
        box.backgroundColor = UIColor.red;
        view.addSubview(box)
        */
    }


    
}
