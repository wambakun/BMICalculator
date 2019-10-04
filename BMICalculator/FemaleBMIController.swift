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
        heightFemale.maximumValue = 200
        
        weightFemale.minimumValue = 0
        weightFemale.maximumValue = 150
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func height(_ sender: Any) {
        heightLabel.text = String(round(heightFemale.value))
        calculateBmi(w: weightFemale.value, h: heightFemale.value)
        bmiFemaleScore.text = String(round(calculateBmi(w: weightFemale.value, h: heightFemale.value)))
    }
    @IBAction func weight(_ sender: Any) {
        weightLabel.text = String(round(weightFemale.value))
        bmiFemaleScore.text = String(round(calculateBmi(w: weightFemale.value, h: heightFemale.value)))
        
    }
    
    
    func calculateBmi(w: Float,h: Float)-> Float{
        let height = h/100;
        let total = w/(height * height)
        
        if(total < 18 ){
            bmiFemaleStatus.text = "Under Weight"
            imageFemale.image = UIImage(named : "skinny")
        }else if(total > 18 && total <= 25){
            bmiFemaleStatus.text = "Normal"
            imageFemale.image = UIImage(named: "normal")
        }else if(total > 25 && total <= 27){
            bmiFemaleStatus.text = "Over Weight"
            imageFemale.image = UIImage(named : "fat")
        }else if(total > 27){
            bmiFemaleStatus.text = "Obese-1"
            imageFemale.image = UIImage(named: "obese")
        }
        return total
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
