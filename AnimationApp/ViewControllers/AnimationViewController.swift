//
//  AnimationViewController.swift
//  AnimationApp
//  
//  Created by Kate on 10.12.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
  //MARK: - IBOutlets
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationButton: SpringButton!
    @IBOutlet var animationLabel: SpringLabel!
    
    //MARK: - Public Properties
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }
    
    //MARK: - IBAction
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.delay = CGFloat(animation.delay)
        animationView.duration = CGFloat(animation.duration)
        animationView.animate()
        
        animation = .getAnimation()
        
        animationButton.setTitle("Run \(animation.name)", for: .normal)
    }
}
