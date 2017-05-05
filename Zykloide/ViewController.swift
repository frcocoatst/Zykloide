//
//  ViewController.swift
//  Zykloide
//
//  Created by Friedrich HAEUPL on 05.05.17.
//  Copyright © 2017 Friedrich HAEUPL. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var myViewOutlet: MyView!
    
    @IBOutlet weak var valueROutlet: NSSlider!
    
    @IBOutlet weak var valuerOutlet: NSSlider!
    
    @IBAction func SliderR_Action(_ sender: Any) {
        
        let RFloat:Float = valueROutlet.floatValue/1.0
        myViewOutlet.valueSetR(RFloat)
    }
    
    @IBAction func Slider_r_Action(_ sender: Any) {
        
        let rFloat:Float = valuerOutlet.floatValue/10.0
        myViewOutlet.valueSetr(rFloat)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

