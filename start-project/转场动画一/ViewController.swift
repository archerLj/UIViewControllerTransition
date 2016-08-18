//
//  ViewController.swift
//  转场动画一
//
//  Created by archerLj on 16/8/18.
//  Copyright © 2016年 com.bocodo.csr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnAction(_ sender: UIButton) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "nextViewControllerSB") as! NextViewController
        self.present(nextVC, animated: true, completion: nil)
    }
}

