//
//  SecondViewController.swift
//  HelloWorld
//
//  Created by Student on 24.04.17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    Wenn die secondView geöffnet wird willAppear aufgerufen
    */
    override func viewWillAppear(_ animated: Bool) {
        print("First View Will appear")
    }
    /*
    Wird immer nach willAppear aufgerufen
     */
    override func viewDidAppear(_ animated: Bool) {
        print("First View did appear")
    }
    
    /*
    wird immer beim schließen der view aufgerufen
     */
    override func viewWillDisappear(_ animated: Bool) {
        print("First View will disappear")
    }
    
    /*
    wird immer nach will appear aufgerufen
    */
    override func viewDidDisappear(_ animated: Bool) {
        print("First View did disappear")
    }
}

