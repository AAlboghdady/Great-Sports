//
//  UIView+Extension.swift
//  smow
//
//  Created by Mohamed Tarek on 10/13/18.
//  Copyright © 2018 Madar AlReyadah. All rights reserved.
//

import UIKit

extension UIView {
    func dropShadow(offsetX: CGFloat, offsetY: CGFloat, color: UIColor, opacity: Float, radius: CGFloat, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: offsetX, height: offsetY)
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
        clipsToBounds = true
    }
    
    //    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
    //        let maskPath = UIBezierPath(roundedRect: bounds,
    //                                    byRoundingCorners: corners,
    //                                    cornerRadii: CGSize(width: radius, height: radius))
    //        let shape = CAShapeLayer()
    //        shape.path = maskPath.cgPath
    //        layer.mask = shape
    //    }
    
    //    @IBInspectable
    //    var isCircular: Bool {
    //        set{
    //            roundCorners(.allCorners, radius: bounds.height / 2)
    //        }
    //        get{
    //            return cornerRadius == bounds.height / 2
    //        }
    //    }
    //
    //    @IBInspectable
    //    var roundedEdges: Bool {
    //        set {
    //            cornerRadius = frame.size.height / 2
    //        }
    //        get{
    //            return cornerRadius == cornerRadius
    //        }
    //    }
    //
    //    @IBInspectable
    //    var shadowOffset: CGSize{
    //        get{
    //            return self.layer.shadowOffset
    //        }
    //        set{
    //            self.layer.shadowOffset = newValue
    //        }
    //    }
    //
    //    @IBInspectable
    //    var shadowColor: UIColor{
    //        get{
    //            return UIColor(cgColor: self.layer.shadowColor!)
    //        }
    //        set{
    //            self.layer.shadowColor = newValue.cgColor
    //        }
    //    }
    //
    //    @IBInspectable
    //    var shadowRadius: CGFloat{
    //        get{
    //            return self.layer.shadowRadius
    //        }
    //        set{
    //            self.layer.shadowRadius = newValue
    //        }
    //    }
    //
    //    @IBInspectable
    //    var shadowOpacity: Float{
    //        get{
    //            return self.layer.shadowOpacity
    //        }
    //        set{
    //            self.layer.shadowOpacity = newValue
    //        }
    //    }
    
    //    @IBInspectable
    //    var cornerRadius: CGFloat {
    //        get {
    //            return layer.cornerRadius
    //        }
    //        set {
    //            layer.cornerRadius = newValue
    //            layer.masksToBounds = newValue > 0
    //            layoutIfNeeded()
    //        }
    //    }
    
    //    @IBInspectable
    //    var borderWidth: CGFloat {
    //        get {
    //            return layer.borderWidth
    //        }
    //        set {
    //            layer.borderWidth = newValue
    //        }
    //    }
    
    //    @IBInspectable
    //    var borderColor: UIColor? {
    //        get {
    //            return UIColor(cgColor: layer.borderColor!)
    //        }
    //        set {
    //            layer.borderColor = newValue?.cgColor
    //        }
    //    }
    
    func removeNoDataLabel(tag: Int = 10000) {
        if let noDataLabel = self.viewWithTag(tag) {
            UIView.animate(withDuration: 0.2, animations: {
                noDataLabel.alpha = 0.0
            }) { _ in 
                noDataLabel.removeFromSuperview()
            }
        }
    }
    
    func setNoDataLabel(text: String, textColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) {
        let containerView = UIView()
        let label = UILabel()
        
        containerView.frame = self.bounds
        
        containerView.tag = 10000
        containerView.backgroundColor = .clear
        
        label.frame = containerView.bounds
        label.frame.size.width =  containerView.frame.size.width
        label.numberOfLines = 0
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.textColor = textColor
        //        label.font = UIFont.init(name: Constants.AppFont.regular.rawValue, size: 18.0)
        label.text = text
        
        containerView.addSubview(label)
        
        addSubview(containerView)
    }
    
    //    func lock(frameRect: CGRect = CGRect.zero) {
    //        if (viewWithTag(10) != nil) {
    //            //View is already locked
    //        }
    //        else {
    //            let lockView = UIView()
    //
    //            if frameRect == CGRect.zero{
    //                lockView.frame = bounds
    //            }
    //            else{
    //                lockView.frame = frameRect
    //            }
    //
    //            lockView.backgroundColor = .clear
    //
    //            lockView.tag = 10
    //            lockView.alpha = 0.0
    //
    //
    //            let spinner = JHSpinnerView.showDeterminiteSpinnerOnView(self, spinnerColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), backgroundColor: UIColor.appColor(.primary))
    //
    //
    //            spinner.progress = 0.0
    //            lockView.addSubview(spinner)
    //
    //            addSubview(lockView)
    //
    //            UIView.animate(withDuration: 0.2) {
    //                lockView.alpha = 1.0
    //            }
    //        }
    //    }
    
    //    func unlock() {
    //        if let lockView = self.viewWithTag(10) {
    //            UIView.animate(withDuration: 0.2, animations: {
    //                lockView.alpha = 0.0
    //            }) { finished in
    //                lockView.removeFromSuperview()
    //            }
    //        }
    //    }
    
}

extension UIView {
    
    func shakeHorizontal() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.2
        shake.repeatCount = 200000000
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x , y: center.y - 5)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x , y: center.y + 5)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: "position")
    }
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func roundCorners(_ corners: CACornerMask, radius: CGFloat) {
        layer.cornerRadius = radius
        clipsToBounds = true
        layer.maskedCorners = [corners]
    }
    
    @IBInspectable var applyShadow: Bool {
        get {
            return false
        }
        set {
            layer.shadowColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
            layer.shadowOffset = CGSize(width: 0, height: 0)
            layer.shadowRadius = 3
            layer.shadowOpacity = 0.3
            layer.masksToBounds = false
        }
    }
    
    @IBInspectable var rounded: Bool {
        get {
            return false
        }
        set {
            layer.cornerRadius = frame.height / 2
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    @IBInspectable var masksToBounds: Bool {
        get {
            return false
        }
        set {
            layer.masksToBounds = true
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    func lock(frameRect: CGRect = CGRect.zero) {
        if (viewWithTag(10) != nil) {
            // View is already locked
        } else {
            let lockView = UIView()
            
            if frameRect == CGRect.zero {
                lockView.frame = bounds
            } else {
                lockView.frame = frameRect
            }
            
            lockView.backgroundColor = UIColor(white: 0.5, alpha: 0.3)
            
            lockView.tag = 10
            lockView.alpha = 0.0
            
            let activityIndicator = UIActivityIndicatorView(frame:CGRect(x: lockView.center.x, y: lockView.center.y, width: 50, height: 50))
            
            if #available(iOS 13.0, *) {
                activityIndicator.style = .large
            } else {
                // Fallback on earlier versions
            }
            activityIndicator.center.x = lockView.center.x
            activityIndicator.center.y = lockView.center.y
            activityIndicator.color = #colorLiteral(red: 0.9647058824, green: 0.5764705882, blue: 0.1254901961, alpha: 1)
            
            activityIndicator.startAnimating()
            lockView.addSubview(activityIndicator)
            addSubview(lockView)
            
            UIView.animate(withDuration: 0.2) {
                lockView.alpha = 1.0
            }
        }
    }
    
    func unlock() {
        if let lockView = self.viewWithTag(10) {
            UIView.animate(withDuration: 0.2, animations: {
                lockView.alpha = 0.0
            }) { _ in
                lockView.removeFromSuperview()
            }
        }
    }
    
    func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
    }
    
    // OUTPUT 1
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1
        
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    // OUTPUT 2
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func dropShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 1
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
        
    }
    
    func pinEdges(to other: UIView) {
        leadingAnchor.constraint(equalTo: other.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: other.trailingAnchor).isActive = true
        topAnchor.constraint(equalTo: other.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: other.bottomAnchor).isActive = true
    }
    
    func bindToKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        
    }
    
    @objc func keyboardWillChange(_ notification : NSNotification) {
        
        let duration = notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        
        let curve = notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! uint
        let startingFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue ).cgRectValue
        let endingFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        let deltay = endingFrame.origin.y - startingFrame.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIView.KeyframeAnimationOptions(rawValue: UInt(curve)), animations: {
            self.frame.origin.y += deltay
        }, completion: nil)
        
    }
    
    func shake() {
        
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.05
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 5, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: "position")
    }
    
    //    func blink() {
    //            self.alpha = 0.2
    //            UIView.animate(withDuration: 1, delay: 0.0, options: [.curveLinear, .repeat, .autoreverse], animations: {self.alpha = 1.0}, completion: nil)
    //        }
    func blink(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, alpha: CGFloat = 0.0) {
        UIView.animate(withDuration: duration, delay: delay, options: [.curveEaseInOut, .repeat, .autoreverse], animations: {
            self.alpha = alpha
        })
    }
}

func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
    return CGRect(x: x, y: y, width: width, height: height)
}

enum VerticalLocation: String {
    case bottom
    case top
}

extension UIView {
    func addShadow(location: VerticalLocation, color: UIColor = .darkGray, opacity: Float = 0.5, radius: CGFloat = 1) {
        switch location {
        case .bottom:
            addShadow(offset: CGSize(width: 0, height: 2), color: color, opacity: opacity, radius: radius)
        case .top:
            addShadow(offset: CGSize(width: 0, height: -2), color: color, opacity: opacity, radius: radius)
        }
    }
    
    func addShadow(offset: CGSize, color: UIColor = .black, opacity: Float = 0.5, radius: CGFloat = 5.0) {
        self.layer.masksToBounds = false
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = opacity
        self.layer.shadowRadius = radius
        
//        layer.shadowColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
//        layer.shadowOffset = CGSize(width: 0, height: 0)
//        layer.shadowRadius = 3
//        layer.shadowOpacity = 0.3
//        layer.masksToBounds = false
    }
}
