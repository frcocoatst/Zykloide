//
//  MyView.swift
//  Zykloide
//
//  Created by Friedrich HAEUPL on 05.05.17.
//  Copyright © 2017 Friedrich HAEUPL. All rights reserved.
//

import Cocoa

class MyView: NSView {
    
    var mycurve = NSBezierPath()
    var myRect = NSRect()
    var centerPoint = NSPoint()
    
    var a = NSPoint()
    var b = NSPoint()

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        var Radius_R:CGFloat = 100
        var Radius_r:CGFloat = 10
        var Sum_R:CGFloat = 10
        var Rel_R:CGFloat = 10

        // Drawing code here.
        NSColor.white.setFill()
        NSRectFill(self.bounds)
        //
        mycurve.removeAllPoints()
        
        centerPoint.x = (self.bounds.origin.x + self.bounds.size.width)/2.0
        centerPoint.y = (self.bounds.origin.y + self.bounds.size.height)/2.0
        
        //Radius_R = [myRadiusROutlet floatValue];
        // [myDispRadiusROutlet setFloatValue:Radius_R];
        
        // Radius_r = [myRadiusrOutlet floatValue];
        // [myDispRadiusrOutlet setFloatValue:Radius_r];
        
        // Calculate what can be calculated out of the for-loop
        Sum_R = Radius_R + Radius_r
        Rel_R = Sum_R / Radius_r
        
        // set startposition
        a.x = centerPoint.x + (Sum_R * cos(0)) - (Radius_r * cos(0))
        a.y = centerPoint.y + Sum_R * sin(0 ) - Radius_r * sin(0)
        b.x = a.x
        b.y = a.y
        
        //for(phi=0;phi<360;phi+=2)
        for phi in 0 ..< 360 {
            
            a.x = centerPoint.x + Sum_R * cos(CGFloat(phi) * 3.141592654/180.0) - Radius_r * cos(Rel_R * CGFloat(phi) * 3.141592654/180.0)
            
            a.y = centerPoint.y + Sum_R * sin(CGFloat(phi) * 3.141592654/180.0) - Radius_r * sin(Rel_R * CGFloat(phi) * 3.141592654/180.0)
            
            
            // draw it
            mycurve.move(to: a)
            mycurve.line(to: b)
            mycurve.stroke()
            
            b = a
        }
    }
    
    /*
     
     needsDisplay = true

     
     */
    
    
}
