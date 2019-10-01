//
//  FemaleBMIController.swift
//  BMICalculator
//
//  Created by DSMacbook on 01/10/19.
//  Copyright © 2019 DSMacbook. All rights reserved.
//

import UIKit

class FemaleBMIController: UIViewController {

    @IBOutlet weak var imageFemale: UIImageView!
    
    @IBOutlet weak var heightFemale: UISlider!
    
    @IBOutlet weak var bmiFemaleStatus: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var bmiFemaleScore: UILabel!
    @IBOutlet weak var weightFemale: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        heightFemale.minimumValue = 0
        heightFemale.maximumValue = 100
        
        weightFemale.minimumValue = 0
        weightFemale.maximumValue = 200
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func height(_ sender: Any) {
        heightLabel.text = String(round(heightFemale.value))
    }
    @IBAction func weight(_ sender: Any) {
        weightLabel.text = String(round(weightFemale.value))
    }
    
    
    func calculateBmi(w: Double,h: Double){
        
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
