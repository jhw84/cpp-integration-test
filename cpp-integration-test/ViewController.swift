//
//  ViewController.swift
//  cpp-integration-test
//
//  Created by Joost Weijs on 21/02/2017.
//  Copyright © 2017 Joost Weijs. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    func dialogOK(Title: String, text: String) -> Bool {
        let myPopup: NSAlert = NSAlert()
        myPopup.messageText = Title
        myPopup.informativeText = text
        myPopup.alertStyle = NSAlertStyle.warning
        myPopup.addButton(withTitle: "OK")
        //myPopup.addButtonWithTitle("Cancel")
        myPopup.runModal()
        return true
    }
    
    @IBOutlet weak var outputField: NSTextField!
    @IBOutlet weak var inputField: NSTextField!
    @IBOutlet weak var inputFieldB1: NSTextField!
    @IBOutlet weak var inputFieldB2: NSTextField!
    @IBOutlet weak var outputFieldB: NSTextField!
    
    
    @IBAction func hitCompute(_ sender: NSButton) {
        if let inputVal:Int32 = Int32(inputField.stringValue) {
            outputField.stringValue = "\(getResultFromCPP(inputVal))"
        } else {
            _ = dialogOK(Title: "Invalid value: \(inputField.stringValue)",text: "Please enter a numeric value.")
        }
        //print("test \(getResultFromCPP(1))")
    }

    @IBAction func hitComputeB(_ sender: Any) {
        if let inputValB1 = Int32(inputFieldB1.stringValue), let inputValB2 = Int32(inputFieldB2.stringValue) {
            outputFieldB.stringValue = "\(getResultFromCPP2(inputValB1,inputValB2))"
        }
        else {
            _ = dialogOK(Title: "Invalid value",text: "Please enter a numeric value in both fields.")
        }
        

        
        
    }
}

