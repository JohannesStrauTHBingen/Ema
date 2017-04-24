//
//  FirstViewController.swift
//  HelloWorld
//
//  Created by Student on 24.04.17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    Wird beim Ausführen der App als erstes Aufgerufen und jedesmal wenn die First View geöffnet wird.
     */
    override func viewWillAppear(_ animated: Bool) {
        print("First View Will appear")
    }
    /*
     Wird immer nach der viewAppear Aufgerufen
    */
    override func viewDidAppear(_ animated: Bool) {
        print("First View did appear")
    }
    
    /*
    Wird aufgerufen wenn die view Geschlossen werden soll
    */
    override func viewWillDisappear(_ animated: Bool) {
        print("First View will disappear")
    }
    
    /*
    Wird jedes nach WillDisappear aufgerufen
    */
    override func viewDidDisappear(_ animated: Bool) {
        print("First View did disappear")
    }
}

