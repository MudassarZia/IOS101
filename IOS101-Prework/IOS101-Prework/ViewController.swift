//
//  ViewController.swift
//  IOS101-Prework
//
//  Created by Mudassar Zia on 2023-08-16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        let sliderValue = slider.value * 100
        
        label.text = String("Slider: \(sliderValue)%")
    }
    
    @IBAction func BGSwitch(_ sender: UISwitch) {
        if sender.isOn{
            view.backgroundColor = UIColor.white
        }
        else{
            view.backgroundColor = UIColor.black
        }
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    func changeColor() -> UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
}

