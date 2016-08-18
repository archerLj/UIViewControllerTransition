//
//  NextViewController.swift
//  转场动画一
//
//  Created by archerLj on 16/8/18.
//  Copyright © 2016年 com.bocodo.csr. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 45.0
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
    }
}
