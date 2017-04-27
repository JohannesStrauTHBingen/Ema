//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let mainView = UIView()
mainView.backgroundColor = UIColor.white
mainView.frame = CGRect(x: 0 ,y : 0 ,width : 500, height : 500)


//Blauer Kreis
let circView = UIView()
circView.backgroundColor = UIColor.blue
circView.frame = CGRect(x : 50, y : 50, width : 100, height : 100)
circView.layer.cornerRadius = 50
mainView.addSubview(circView)

// Schwarzes Dreieck
let triView = UIView()
triView.frame = CGRect(x : 150 , y : 50, width: 100, height : 100)
let triPath = UIBezierPath()
triPath.move(to: CGPoint(x : 0 , y : 100))
triPath.addLine(to: CGPoint(x : 50, y : 0))
triPath.addLine(to: CGPoint(x : 100, y : 100))
triPath.addLine(to: CGPoint(x : 0, y : 100))
triPath.close()
let triLayer = CAShapeLayer()
triLayer.path = triPath.cgPath
triView.layer.addSublayer(triLayer)
mainView.addSubview(triView)

//Rotes Viereck
let recView = UIView()
recView.backgroundColor = UIColor.red
recView.frame = CGRect(x : 250, y : 50, width : 100, height : 100 )
mainView.addSubview(recView)


PlaygroundPage.current.liveView = mainView
