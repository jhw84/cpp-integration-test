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
    @IBAction func hitCompute(_ sender: NSButton) {
        if let inputVal:Int32 = Int32(inputField.stringValue) {
            outputField.stringValue = "\(getResultFromCPP(inputVal))"
        } else {
            _ = dialogOK(Title: "Invalid value: \(inputField.stringValue)",text: "Please enter a numeric value.")
        }
        //print("test \(getResultFromCPP(1))")
    }

}

