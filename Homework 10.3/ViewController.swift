

import UIKit

class ViewController: UIViewController {
    let myCircle = UIView()
    let size: CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myCircle.frame = CGRect(x: (self.view.frame.width) / 2,
                                y: (self.view.frame.width) / 2,
                                width: size,
                                height: size)
        
        myCircle.backgroundColor = .red
        myCircle.layer.cornerRadius = myCircle.frame.width / 2
        self.view.addSubview(myCircle)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(moveCircle))
        self.myCircle.addGestureRecognizer(panGesture)
    
    }

    @objc func moveCircle(recogniser: UIPanGestureRecognizer) {
        let translation = recogniser.translation(in: self.view)
        myCircle.center = CGPoint(x: myCircle.center.x + translation.x,
                                  y: myCircle.center.y + translation.y)
        recogniser.setTranslation(CGPoint(x: 0, y: 0), in: self.view)
    }

   
    
}

