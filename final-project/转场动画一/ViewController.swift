//
//  ViewController.swift
//  转场动画一
//
//  Created by archerLj on 16/8/18.
//  Copyright © 2016年 com.bocodo.csr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var transition = MyAnimator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "nextViewControllerSB") as! NextViewController
        nextVC.transitioningDelegate = self
        self.present(nextVC, animated: true, completion: nil)
    }
}

extension ViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresentedController presented: UIViewController, presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.presenting = true
        return transition
    }
    
    func animationController(forDismissedController dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.presenting = false
        return transition
    }
}
