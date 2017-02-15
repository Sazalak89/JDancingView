//
//  ViewController.swift
//  TouchAndChange
//
//  Created by Zalak Patel on 14/02/17.
//  Copyright © 2017 Solution Analysts Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

		var dancingView = DancingView()

	
	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	
	//----------------------------------------------------------------------------------------------------
	//MARK:- Button Action Methods
	//----------------------------------------------------------------------------------------------------
	@IBAction func IBbtnStartTwinkling(_ sender:UIButton)
	{
		dancingView.twinkleView(mainView: self.view)
	}

	@IBAction func IBbtnStopTwinkling(_ sender:UIButton)
	{
		dancingView.stopTwinkling()
	}

}

