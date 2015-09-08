//
//  AppDelegate.swift
//  RGBWell
//
//  Created by Stephen Skubik-Peplaski on 9/7/15.
//  Copyright (c) 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowContoller: MainWindowController?
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Create a window controller
        let mainWindowController = MainWindowController()
        // Put the window on the screen
        mainWindowController.showWindow(self)
        
        // set the property to point to the window controller
        self.mainWindowContoller = mainWindowController
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

