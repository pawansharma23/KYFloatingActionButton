//
//  ViewController.swift
//  KYButton
//
//  Created by Lawliet on 2016/10/3.
//  Copyright © 2016年 Lawliet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: KYButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        button.openType = .pop
        button.add(color:UIColor.red)
        button.add(color:UIColor.orange)
        button.add(color:UIColor.brown)
        button.add(color: UIColor.green, image: UIImage(named: "Map Filled-50.png")!) { (item) in
            let alert = UIAlertController(title: "Hello", message: "Are you ok?", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
