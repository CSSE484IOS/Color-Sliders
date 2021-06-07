//
//  ViewController.swift
//  Color Sliders
//
//  Created by Sisyphus on 6/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var alphaValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        redSlider.value = 0.5
        greenSlider.value = 0.0
        blueSlider.value = 0.0
        alphaSlider.value = 1.0
        updateView()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChanged(_ sender: Any) {
        print("fuck")
        updateView()
    }
    func updateView(){
        let greenValue = greenSlider.value
        let redValue = redSlider.value
        let blueValue = blueSlider.value
        let alphaValue = alphaSlider.value
        
        print("Values: \(greenValue) \(redValue) \(blueValue) \(alphaValue)")
        
        redValueLabel.text = String(format: "%.2f", redValue)
        greenValueLabel.text = String(format: "%.2f", greenValue)
        blueValueLabel.text = String(format: "%.2f", blueValue)
        alphaValueLabel.text = String(format: "%.2f", alphaValue)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: CGFloat(alphaValue))
        
    }
    
}

