//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Denis on 19.03.2023.
//


import Spring

class ViewController: UIViewController {
    

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var dataString: UILabel!
    
    private var animationDetails = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataString.text = animationDetails.description
    }
    
   

    @IBAction func runButton(_ sender: UIButton) {
        dataString.text = animationDetails.description
        
        animationView.animation = animationDetails.name
        animationView.curve = animationDetails.curve
        animationView.force = animationDetails.force
        animationView.duration = animationDetails.duration
        animationView.delay = animationDetails.delay
        
        animationView.animate()
        
        animationDetails = Animation.getRandomAnimation()
        
        sender.setTitle("Rung \(animationDetails.name)", for: .normal)

    }
    
}

