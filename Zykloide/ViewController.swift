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
    
    @IBOutlet weak var valueRvalue: NSTextField!
    
    @IBOutlet weak var valuervalue: NSTextField!
    
    @IBAction func SliderR_Action(_ sender: Any) {
        
        let RFloat:Float = valueROutlet.floatValue/1.0
        myViewOutlet.valueSetR(RFloat)
        valueRvalue.stringValue = String(format: "%3.2f",RFloat)
    }
    
    @IBAction func Slider_r_Action(_ sender: Any) {
        
        let rFloat:Float = valuerOutlet.floatValue/10.0
        myViewOutlet.valueSetr(rFloat)
        valuervalue.stringValue = String(format: "%3.2f",rFloat)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // additional setup after loading the view  set Values
        myViewOutlet.valueSetR(50.0)
        myViewOutlet.valueSetr(50.0)
        valueRvalue.stringValue = "50.00"
        valuervalue.stringValue = "5.00"
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

