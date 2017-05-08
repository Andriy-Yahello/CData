//
//  ViewController.swift
//  CData
//
//  Created by user128130 on 5/8/17.
//  Copyright © 2017 a.yahello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    
    @IBAction func submit(_ sender: Any) {
        output.text = input.text
        UserDefaults.standard.set(input.text,forKey: "myPreference")
        input.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool)
    {
        if let x = UserDefaults.standard.object(forKey: "myPreference") as? String
        {
            output.text = x
        }
    }

}

