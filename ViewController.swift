//
//  ViewController.swift
//  TEST2
//
//  Created by WillowRivers on 2017/1/19.
//  Copyright © 2017年 WillowRivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad() ;
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 120, height: 50)) ;
        button.backgroundColor = UIColor.blue ;
        button.setTitle("goTableView", for: .normal) ;
        button.addTarget(self , action: #selector(ViewController.goto), for: .touchUpInside) ;
        
        view.addSubview(button) ;
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func goto()
    {
         self.present(InheritTableViewController() , animated: true, completion: nil) ;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

