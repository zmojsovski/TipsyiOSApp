//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculationController: UIViewController {

    @IBOutlet weak var billInputText: UITextField!
    @IBOutlet weak var numberToSplit: UILabel!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    
    var tip = 0.1
    var toSplit = 2.0
    var billSplit = 0.0
    var calculation = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tipPressed(_ sender: UIButton) {
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        
        tip = Double(sender.currentTitle!.dropLast())!
        tip /= 100
        sender.isSelected = true
    }
    @IBAction func stepperClicked(_ sender: UIStepper) {
        toSplit = sender.value
        numberToSplit.text = String(format: "%.0f", sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        billSplit = Double(billInputText.text!) ?? 0.0
     calculation = (billSplit + (billSplit * tip)) / toSplit
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender != nil {
            let destinationVC = segue.destination as! ResultsController
            destinationVC.bill = calculation
            destinationVC.tip = Int(tip * 100)
            destinationVC.splitPersons = Int(toSplit)
        }
    }
}

