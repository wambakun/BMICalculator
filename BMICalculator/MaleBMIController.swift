//
//  MaleBMIController.swift
//  BMICalculator
//
//  Created by DSMacbook on 01/10/19.
//  Copyright © 2019 DSMacbook. All rights reserved.
//

import UIKit

class MaleBMIController: UIViewController {

    @IBOutlet weak var heightMale: UISlider!
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var bmiScoreLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightMale: UISlider!
    @IBOutlet weak var maleImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        heightMale.minimumValue = 0
        heightMale.maximumValue = 100
        
        weightMale.minimumValue = 0
        weightMale.maximumValue = 0
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func weight(_ sender: Any) {
        weightLabel.text = String(round(weightMale.value))
    }
    @IBAction func height(_ sender: Any) {
        heightLabel.text = String(round(heightMale.value))
    }
    
    func calculateBmi(w : Float,h: Float){
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
