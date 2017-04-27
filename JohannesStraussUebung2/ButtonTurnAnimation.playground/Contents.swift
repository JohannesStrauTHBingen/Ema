//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


class ViewController : UIViewController {
    
    // Der View, der animiert wird
    var subViewA:UIView? = nil
    var colors:[UIColor] = [UIColor.blue, UIColor.purple, UIColor.red, UIColor.orange]
    var index:Int = 0
    
    override func loadView() {
        // Der Hintergrund
        let mainView = UIView(frame: CGRect(x:0.0,y:0.0,width:300.0,height:500.0))
        mainView.backgroundColor = UIColor.white
        
        // Der drehbare UIVIew
        self.subViewA = UIView(frame:CGRect(x:100.0,y:300.0,width:100.0,height:100.0))
        self.subViewA?.backgroundColor = colors[index]
        mainView.addSubview(subViewA!)
        
        // Der Button
        let button:UIButton = UIButton(frame: CGRect(x:50.0,y:75.0, width:200.0,height:50.0))
        button.backgroundColor = UIColor.red
        button.setTitle("Click Me", for: UIControlState.normal)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        mainView.addSubview(button)
        
        self.view = mainView
        // Zum Testen buttonClicked klappt
        // startButton.sendActions(for: .touchUpInside)
    }
    
    // Führt die Animation aus
    func onClick(){
        UIView.animate(withDuration: 2.0, animations: { () -> Void in
            self.index += 1
            self.subViewA?.backgroundColor = self.colors[self.index & 3]
            let rotationTransform = CGAffineTransform.init(rotationAngle: CGFloat.pi * CGFloat(self.index))
            self.subViewA?.transform = rotationTransform
        })
    }
}

PlaygroundPage.current.liveView = ViewController()
