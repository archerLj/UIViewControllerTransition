//
//  MyAnimator.swift
//  转场动画一
//
//  Created by archerLj on 16/8/18.
//  Copyright © 2016年 com.bocodo.csr. All rights reserved.
//

import UIKit

class MyAnimator: NSObject, UIViewControllerAnimatedTransitioning {

    let animationDuration = 2.0
    var presenting = true
    
    // MARK 动画时间
    func transitionDuration(_ transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return animationDuration
    }
    
    // MARK 动画效果
    func animateTransition(_ transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView()
        let toView = transitionContext.view(forKey: UITransitionContextToViewKey)!
        let fromView = transitionContext.view(forKey: UITransitionContextFromViewKey)!
        
        let presentView = presenting ? toView : fromView
        
        
        
        if !presenting {
            containerView.addSubview(toView)
        }
        containerView.addSubview(presentView)
        
        if presenting {
            presentView.alpha = 0.0
        }
        
        
        UIView.animate(withDuration: animationDuration, animations: {
            if self.presenting {
                presentView.alpha = 1.0
            } else {
                presentView.alpha = 0.0
            }
            
            }) { _ in
                transitionContext.completeTransition(true)
        }
    }
}
