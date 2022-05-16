//
//  ViewController.swift
//  TConverter
//
//  Created by Matvei Khlestov on 15.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let celsiusTemperature = Int(round(sender.value))
        celsiusLabel.text = "\(celsiusTemperature)ºC"
        
        let fahrenheitTemperature = Int(round(sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
        
    }
}

