//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Stephen Skubik-Peplaski on 9/7/15.
//  Copyright (c) 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    var r: Float = 0.0
    var b: Float = 0.0
    var g: Float = 0.0
    var a: Float = 1.0
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r),
                                       green: CGFloat(g),
                                        blue: CGFloat(b),
                                       alpha: CGFloat(a))
        colorWell.color = newColor
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        r = sender.floatValue
        updateColor()
    }

    @IBAction func adjustGreen(sender: NSSlider) {
        g = sender.floatValue
        updateColor()
    }
    
    @IBAction func adjustBlue(sender: NSSlider) {
        b = sender.floatValue
        updateColor()
    }
    
    @IBAction func adjustAlpha(sender: NSSlider) {
        a = sender.floatValue
        updateColor()
    }
}
