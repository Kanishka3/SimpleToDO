//
//  notherView.swift
//  toDoList
//
//  Created by Kanishka TheProgrammer on 18/04/18.
//  Copyright © 2018 Kanishka TheProgrammer. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
var audio = AVAudioPlayer()
var path = Bundle.main.path(forResource: "buttonClicked", ofType: "mp3")
class anotherView: UIViewController{
   
    @IBOutlet var textField: UITextField!
    
    @IBAction func backButton(_ sender: UIButton) {
        do{
            try audio = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath:path!) as URL)
        }
        catch{}
        
        print("The back button was accessed")
    }
    @IBAction func addIt(_ sender: UIButton) {
        if textField.text != "" {
        allElements.append(textField.text!)
            textField.text = " "
        }
        
        
        print("an element was appended")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
