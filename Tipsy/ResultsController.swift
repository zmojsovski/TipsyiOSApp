//
//  ResultsController.swift
//  Tipsy
//
//  Created by Zhanko Mojsovski on 13.2.21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsController: UIViewController {
    
    @IBOutlet weak var billToShow: UILabel!
    @IBOutlet weak var tipAndSplitLabel: UILabel!
    var bill = 0.0
    var splitPersons = 2
    var tip = 10

    override func viewDidLoad() {
        super.viewDidLoad()

        billToShow.text = String(format: "%.2f", bill)
        tipAndSplitLabel.text = "Split between \(splitPersons) people, with \(tip)% tip."
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 
    */

}
