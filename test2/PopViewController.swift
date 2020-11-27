//
//  PopViewController.swift
//  test2
//
//  Created by Jeremy Jason on 10/06/20.
//  Copyright © 2020 Kezia Widjaja. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {
//
//      var dynamicAnimator: UIDynamicAnimator!
//     let gravityBehavior = UIGravityBehavior()
//     let collisonBehavior = UICollisionBehavior()
//     var angka = Int.random(in: 0...9)
//     var nampung = [UIView]()
//
    @IBOutlet weak var buttonPlaying: UIButton!
    override func viewDidLoad() {
//        super.viewDidLoad()
//        createRec(Input: 10)
//        setupDynamicAnimator()
    }
    
    
//    private func setupDynamicAnimator() {
//
//           dynamicAnimator = UIDynamicAnimator(referenceView: view)
//           collisonBehavior.translatesReferenceBoundsIntoBoundary = true
//           collisonBehavior.collisionMode = .everything
//           dynamicAnimator.addBehavior(gravityBehavior)
//           dynamicAnimator.addBehavior(collisonBehavior)
//       }
//
//
//
//    func createRec(Input : Int){
//
//           for index in 0...Input {
//               var Rec = UIView()
//               let diameter = CGFloat(Int.random(in: 50...90))
//               let position = CGFloat(Int.random(in: 5...100))
//           Rec.frame = CGRect(x: position, y: position, width: diameter, height: diameter)
//
//            Rec.backgroundColor = UIColor(red: CGFloat(Float.random(in: 0...1)), green: CGFloat(Float.random(in: 0...1)), blue: CGFloat(Float.random(in: 0...1)), alpha: 1)
//            let tap = UITapGestureRecognizer(target: self, action: #selector(ballDidTap(_:)))
//            Rec.addGestureRecognizer(tap)
//           Rec.layer.masksToBounds = true
//           Rec.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//            Rec.layer.borderWidth = 1
//            Rec.layer.shadowRadius = 5
//           view.addSubview(Rec)
//           gravityBehavior.addItem(Rec)
//           collisonBehavior.addItem(Rec)
//           nampung.append(Rec)
//           }
//       }
//
//
//   @objc func ballDidTap(_ sender: UITapGestureRecognizer) {
//       let Rec = sender.view
//       UIView.animate(
//           withDuration: 1,
//           animations: {
//               Rec?.alpha = 0
//       },
//           completion: { (isAnimated) in
//               Rec?.removeFromSuperview()
//               guard let Rec = Rec else {return}
//            self.collisonBehavior.removeItem(Rec)
//       })
//   }
//
}
