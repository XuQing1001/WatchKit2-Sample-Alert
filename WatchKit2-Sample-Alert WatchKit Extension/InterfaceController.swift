//
//  InterfaceController.swift
//  WatchKit2-Sample-Alert WatchKit Extension
//
//  Created by XuQing on 15/7/13.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    let cancelBtnAction = WKAlertAction(title: "Cancel", style: WKAlertActionStyle.Cancel) { () -> Void in
        print("Cancel.")
    }
    let defaultBtnAction = WKAlertAction(title: "Default", style: WKAlertActionStyle.Default) { () -> Void in
        print("Default.")
    }
    let destructiveBtnAction = WKAlertAction(title: "Destructive", style: WKAlertActionStyle.Destructive) { () -> Void in
        print("Destructive.")
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func showAlert(){
        self.presentAlertControllerWithTitle("Alert Title", message: "This is a message.", preferredStyle: WKAlertControllerStyle.Alert, actions: [cancelBtnAction, defaultBtnAction, destructiveBtnAction])
    }
    
    @IBAction func showAlertSideBySide(){
        self.presentAlertControllerWithTitle("Alert Title", message: "This is a message.", preferredStyle: WKAlertControllerStyle.SideBySideButtonsAlert, actions: [defaultBtnAction, destructiveBtnAction])
    }
    
    @IBAction func showActionSheet(){
        self.presentAlertControllerWithTitle("Action Sheet Title", message: "This is a message.", preferredStyle: WKAlertControllerStyle.ActionSheet, actions: [defaultBtnAction, destructiveBtnAction])
    }
}
