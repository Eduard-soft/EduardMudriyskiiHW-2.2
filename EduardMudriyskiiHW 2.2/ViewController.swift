//
//  ViewController.swift
//  EduardMudriyskiiHW 2.2
//
//  Created by Эдуард on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider! {
        didSet{
            redSlider.tintColor = UIColor.red
        }
    }
    
    @IBOutlet weak var greenSlider: UISlider! {
        didSet{
            greenSlider.tintColor = UIColor.green
        }
    }
    
    @IBOutlet weak var blueSlider: UISlider! {
        didSet{
            blueSlider.tintColor = UIColor.blue
        }
    }
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func changeTextLabel() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    
    
    
    
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func rgbSliderChanged(_ sender: Any) {
        changeTextLabel()
        changeColor()
    }
}

