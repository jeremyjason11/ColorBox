//
//  NyobaViewController.swift
//  bolaJatuh
//
//  Created by Jeremy Jason on 10/06/20.
//  Copyright © 2020 Jeremy Jason. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var dynamicAnimator: UIDynamicAnimator!
    let gravityBehavior = UIGravityBehavior()
    let collisonBehavior = UICollisionBehavior()
    var angka = Int.random(in: 0...9)
    var nampung = [UIView]()
    
    @IBOutlet weak var squareButton: UIButton!
    @IBOutlet weak var circleButton: UIButton!
    @IBOutlet weak var triangleButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            createRec(Input: 10)
            setupDynamicAnimator()
    }
    
    //balik
//    @IBAction func playBalik(_ sender: Any) {
//        present(UIViewController(), animated: true, completion: nil)
//
//        dismiss(animated: true, completion: nil)
//    }
    //balik
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let isi = sender.currentTitle
        if nampung.count > 0 {
            for item in nampung {
                item.removeFromSuperview()
                self.collisonBehavior.removeItem(item)
            }
            nampung.removeAll()
        }
        switch isi {
        case "Cube":
            createRec(Input: 10)
        case "Circle":
            createBall(Input: 10)
        case "Triangle":
            print("Nothing Happen")
        default:
            print("Ada yang erorr gan")
            }
    }
    
    
    private func setupDynamicAnimator() {

           dynamicAnimator = UIDynamicAnimator(referenceView: view)
           collisonBehavior.translatesReferenceBoundsIntoBoundary = true
           collisonBehavior.collisionMode = .everything
           dynamicAnimator.addBehavior(gravityBehavior)
           dynamicAnimator.addBehavior(collisonBehavior)
       }
  
    func createBall(Input : Int){
        
        
        for index in 0...Input {
            var ball = UIView()
            let diameter = CGFloat(Int.random(in: 50...90))
            let position = CGFloat(Int.random(in: 5...100))
            ball.frame = CGRect(x: position, y: position, width: diameter, height: diameter)
            
              ball.backgroundColor = UIColor(red: CGFloat(Float.random(in: 0...1)), green: CGFloat(Float.random(in: 0...1)), blue: CGFloat(Float.random(in: 0...1)), alpha: 1)
            ball.layer.cornerRadius = diameter/2
            ball.layer.masksToBounds = true
//            ball.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//            ball.layer.borderWidth = 1
            ball.layer.shadowRadius = 1
            view.addSubview(ball)
            gravityBehavior.addItem(ball)
            collisonBehavior.addItem(ball)
            nampung.append(ball)
        }
        
    }
    
    //particle amitter
    
    
    func createRec(Input : Int){
        
        
        for index in 0...Input {
            var Rec = UIView()
            let diameter = CGFloat(Int.random(in: 50...90))
            let position = CGFloat(Int.random(in: 5...100))
        Rec.frame = CGRect(x: position, y: position, width: diameter, height: diameter)
        
         Rec.backgroundColor = UIColor(red: CGFloat(Float.random(in: 0...1)), green: CGFloat(Float.random(in: 0...1)), blue: CGFloat(Float.random(in: 0...1)), alpha: 1)
        Rec.layer.masksToBounds = true
//        Rec.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//        Rec.layer.borderWidth = 1
        view.addSubview(Rec)
        gravityBehavior.addItem(Rec)
        collisonBehavior.addItem(Rec)
        nampung.append(Rec)
        }
    }
    

}


