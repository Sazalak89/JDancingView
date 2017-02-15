//
//  DancingView.swift
//  Pods
//
//  Created by Zalak Patel on 14/02/17.
//
//

import UIKit

@IBDesignable open class DancingView: UIView {
	
	@IBInspectable open var viewRadius:Double = 15.0

	 var TwinkleInterval:Double = 1.0
	 var RotateInterval:Double = 1.0
	fileprivate var touchTimer:Timer?
	fileprivate var superMainView = UIView()
	override open func awakeFromNib() {
		super.awakeFromNib()
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
	}
	
	required public init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		self.layer.cornerRadius = CGFloat(viewRadius)
		self.layer.masksToBounds = true

	}
	
	func twinkleView(mainView:UIView)
	{
		superMainView = mainView
		if touchTimer != nil {
			touchTimer = nil
			touchTimer?.invalidate()
		}
		touchTimer = Timer.scheduledTimer(timeInterval: TwinkleInterval, target: self, selector: #selector(changeColor), userInfo: nil, repeats: true)
	}
	
	
	func stopTwinkling()
	{
		touchTimer?.invalidate()
		for view in superMainView.subviews {
			if view.isKind(of: DancingView.classForCoder()) {
				view.layer.removeAllAnimations()
			}
		}
	}
	
	
	@objc fileprivate func changeColor()
	{
		
		for view in superMainView.subviews {
			if view.isKind(of: DancingView.classForCoder()) {
				view.backgroundColor = randomColor()
				rotate360Degrees(duration: RotateInterval,rotaingView: view)
			}
			
		}
	}
	
	
	func rotate360Degrees(duration: CFTimeInterval,rotaingView:UIView) {
			let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
			rotateAnimation.fromValue = 0.0
			rotateAnimation.toValue = CGFloat(M_PI * 2)
			rotateAnimation.isRemovedOnCompletion = false
			rotateAnimation.duration = duration
			rotateAnimation.repeatCount=Float.infinity
			rotaingView.layer.add(rotateAnimation, forKey: nil)
		}

	
	//Used to get random color
 func randomColor() -> UIColor{
	let red = CGFloat(drand48())
	let green = CGFloat(drand48())
	let blue = CGFloat(drand48())
	return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
	}
	
	
}

