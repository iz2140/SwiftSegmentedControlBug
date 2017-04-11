//
//  ViewController.swift
//  ButtonBug
//
//  Created by Iris Zhang on 4/11/17.
//  Copyright © 2017 Iris Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadButton()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadButton(){
        let button = CustomSegmentedControl.init(items: ["Online" , "Paper"])
        button?.center = view.center
        view.addSubview(button!)
    }


}

