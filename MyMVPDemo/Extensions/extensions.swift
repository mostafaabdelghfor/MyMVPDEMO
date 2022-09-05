//
//  extensions.swift
//  careMatePatient
//
//  Created by khabeer on 4/1/20.
//  Copyright © 2020 khabeer. All rights reserved.
//

import Foundation

import MOLH
import UIKit
import MOLH
@IBDesignable
class RoundUIView: UIView {
    
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            
        }
    }
 
    
}


import UIKit
import QuartzCore

@IBDesignable
class Button : UIButton
{
    @IBInspectable var masksToBounds: Bool    = false                {didSet{updateLayerProperties()}}
    @IBInspectable var cornerRadius : CGFloat = 0                    {didSet{updateLayerProperties()}}
    @IBInspectable var borderWidth  : CGFloat = 0                    {didSet{updateLayerProperties()}}
    @IBInspectable var borderColor  : UIColor = UIColor.clear {didSet{updateLayerProperties()}}
    @IBInspectable var shadowColor  : UIColor = UIColor.clear {didSet{updateLayerProperties()}}
    @IBInspectable var shadowOpacity: CGFloat = 0                    {didSet{updateLayerProperties()}}
    @IBInspectable var shadowRadius : CGFloat = 0                    {didSet{updateLayerProperties()}}
    
    
    @IBInspectable var shadowOffset : CGSize  = CGSize(width: 2.0, height: 2.0)   {didSet{updateLayerProperties()}}



    override func draw(_ rect: CGRect)
    {
        updateLayerProperties()
    }

    func updateLayerProperties()
    {
        self.layer.masksToBounds = masksToBounds
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOpacity = CFloat(shadowOpacity)
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOffset = shadowOffset
    }
}
import UIKit

final class CustomButton: UIButton {

    private var shadowLayer: CAShapeLayer!

    override func layoutSubviews() {
        super.layoutSubviews()

        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 12).cgPath
            shadowLayer.fillColor = UIColor.white.cgColor

            shadowLayer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            shadowLayer.shadowOpacity = 0.8
            shadowLayer.shadowRadius = 2

            layer.insertSublayer(shadowLayer, at: 0)
            //layer.insertSublayer(shadowLayer, below: nil) // also works
        }
    }

}
@IBDesignable
class HighlightButton: UIButton {

    @IBInspectable
    var normalBackground: UIColor = .clear {
        didSet {
            backgroundColor = self.normalBackground
        }
    }

    @IBInspectable
    var highlightBackground: UIColor = .clear

    override open var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? highlightBackground : normalBackground
        }
    }

    func setBackgroundColor(_ c: UIColor, forState: UIControl.State) -> Void {
        if forState == UIControl.State.normal {
            normalBackground = c
        } else if forState == UIControl.State.highlighted {
            highlightBackground = c
        } else {
            // implement other states as desired
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    func commonInit() -> Void {

        // 1. rounded corners
        self.layer.cornerRadius = 10.0

        // 2. Default Colors for state
        self.setBackgroundColor(.orange, forState: .normal)
        self.setBackgroundColor(.red, forState: .highlighted)

        // 3. Add the shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 6.0
        self.layer.masksToBounds = false

    }

}



@IBDesignable
class CornerView: UIView {
    
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var leftTopRadius : CGFloat = 0{
        didSet{
            self.applyMask()
        }
    }
    @IBInspectable var rightTopRadius : CGFloat = 0{
        didSet{
            self.applyMask()
        }
    }
    @IBInspectable var rightBottomRadius : CGFloat = 0{
        didSet{
            self.applyMask()
        }
    }
    
    @IBInspectable var leftBottomRadius : CGFloat = 0{
        didSet{
            self.applyMask()
        }
    }
    
    @IBInspectable var shadow: Bool {
          get {
              return layer.shadowOpacity > 0.0
          }
          set {
              if newValue == true {
                  self.addShadow()
              }
          }
      }

    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.applyMask()
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    /*override func draw(_ rect: CGRect) {
        super.draw(rect)

    }*/
    
    func applyMask()
    {
        let shapeLayer = CAShapeLayer(layer: self.layer)
        shapeLayer.path = self.pathForCornersRounded(rect:self.bounds).cgPath
        shapeLayer.frame = self.bounds
        shapeLayer.masksToBounds = true
        self.layer.mask = shapeLayer
    }
    
    func pathForCornersRounded(rect:CGRect) ->UIBezierPath
    {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0 + leftTopRadius , y: 0))
        path.addLine(to: CGPoint(x: rect.size.width - rightTopRadius , y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width , y: rightTopRadius), controlPoint: CGPoint(x: rect.size.width, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width , y: rect.size.height - rightBottomRadius))
        path.addQuadCurve(to: CGPoint(x: rect.size.width - rightBottomRadius , y: rect.size.height), controlPoint: CGPoint(x: rect.size.width, y: rect.size.height))
        path.addLine(to: CGPoint(x: leftBottomRadius , y: rect.size.height))
        path.addQuadCurve(to: CGPoint(x: 0 , y: rect.size.height - leftBottomRadius), controlPoint: CGPoint(x: 0, y: rect.size.height))
        path.addLine(to: CGPoint(x: 0 , y: leftTopRadius))
        path.addQuadCurve(to: CGPoint(x: 0 + leftTopRadius , y: 0), controlPoint: CGPoint(x: 0, y: 0))
        path.close()
        
        return path
    }
    
    func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
               shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0),
               shadowOpacity: Float = 0.4,
               shadowRadius: CGFloat = 3.0) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
    }

    
    
    
}

extension UIView
{
    
    func setShadowLight(_ radius: CGFloat = 4)  {
        
        self.layer.shadowColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = radius
        
        
    }
    
    func roundCorner(corners: UIRectCorner, radius: CGFloat) {
         let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         layer.mask = mask
     }

    
    
}



extension UIViewController {
   
    func GoToControllerWithIdentifier(identifier : String)
    {
        let vc = self.storyboard!.instantiateViewController(withIdentifier: identifier)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func GoToHomeView()  {
        var window: UIWindow?

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "homeVC") as UIViewController
                         
        window?.rootViewController = vc

    }
    
    func GoToOnBoardingView()  {
        let window = UIApplication.shared.delegate!.window
        let mainViewController = self.storyboard!.instantiateViewController(withIdentifier: "onBoardingVC")
        window!?.rootViewController = mainViewController
        window!?.makeKeyAndVisible()
    }
    func GoToOnLandingView()  {
        let window = UIApplication.shared.delegate!.window
        let mainViewController = self.storyboard!.instantiateViewController(withIdentifier: "LandingVC")
        window!?.rootViewController = mainViewController
        window!?.makeKeyAndVisible()
    }
    
    func GoToDeliveryView()  {
        let window = UIApplication.shared.delegate!.window
        let mainViewController = self.storyboard!.instantiateViewController(withIdentifier: "deliveryVC")
        window!?.rootViewController = mainViewController
        window!?.makeKeyAndVisible()
    }
//    func showMenu()  {
//        self.dismissKeyboard()
//        SideMenuManager.defaultManager.menuWidth = (Constants.ScreenWidth - 100); self.navigationController?.present(self.storyboard!.instantiateViewController(withIdentifier: MOLHLanguage.isArabic() ? "sidemenutestar" : "sidemenutest"), animated: true, completion: nil)
//
//    }
    
    func GoToLoginView(nav : UINavigationController)  {
        let mainViewController = self.storyboard!.instantiateViewController(withIdentifier: "loginVC")
        nav.present(mainViewController, animated: true, completion: nil)
    }
    func delay(time: Double, closure:@escaping ()->()) {
        
        DispatchQueue.main.asyncAfter(deadline: .now()+time, execute: {
            closure()
        })
        
    }
  
    func handleLocalizationChange()
    {
        //        if Languages.currentAppleLanguage() == "ar"
        //        {
        //        loopThroughSubViewAndFlipTheImageIfItsAUIImageView(subviews: self.view.subviews)
        //        }
        UIView.appearance().semanticContentAttribute = MOLHLanguage.isArabic() ?  .forceRightToLeft : .forceLeftToRight  
    }

}
extension UIView
{
    
    
    func setGradient(view:UIView,firstColor:UIColor,secondeColor:UIColor,gradient:CAGradientLayer)   {
        gradient.frame = gradient.bounds
            
            
            
            view.layoutIfNeeded()
            view.backgroundColor = nil

            gradient.masksToBounds = false
            gradient.frame = view.bounds
            
            gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradient.endPoint = CGPoint(x: 1.0, y: 0.0)
            
            gradient.colors = [firstColor.cgColor,secondeColor.cgColor]
            gradient.cornerRadius = 20
    }
    
}

extension String {
var boolValue: Bool {
    return (self as NSString).boolValue
}}

