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
        heightMale.maximumValue = 200
        
        weightMale.minimumValue = 0
        weightMale.maximumValue = 150
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func weight(_ sender: Any) {
        weightLabel.text = String(round(weightMale.value))
        bmiScoreLabel.text = String(round(calculateBmi(w: weightMale.value, h: heightMale.value)))
    }
    @IBAction func height(_ sender: Any) {
        heightLabel.text = String(round(heightMale.value))
        bmiScoreLabel.text = String(round(calculateBmi(w: weightMale.value, h: heightMale.value)))
    }
    
    func calculateBmi(w : Float,h: Float)->Float{
        let height = h/100;
        let total = w/(height * height)
        
        if(total < 18 ){
            statusLabel.text = "Under Weight"
            maleImage.image = UIImage(named : "skinny-male")
        }else if(total > 18 && total <= 25){
            statusLabel.text = "Normal"
            maleImage.image = UIImage(named: "normal-male")
        }else if(total > 25 && total <= 27){
            statusLabel.text = "Over Weight"
            maleImage.image = UIImage(named : "fat-male")
        }else if(total > 27){
            statusLabel.text = "Obese-1"
            maleImage.image = UIImage(named: "obese-male")
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
