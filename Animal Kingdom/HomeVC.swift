//
//  HomeVC.swift
//  Animal Kingdom
//
//  Created by Parth Dhebar on 1/19/18.
//  Copyright © 2018 Parth Dhebar. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var monkeyButton: UIButton!
    @IBOutlet var elephantButton: UIButton!
    @IBOutlet var tigerButton: UIButton!
    @IBOutlet var fontSizeLabel: UILabel!
    @IBOutlet var textSizeSlider: UISlider!
    
    
    @IBAction func onMonkeyTap(_ sender: UIButton) {
        animalTypeLabel.text = "Monkey"
        monkeyButton.setImage(#imageLiteral(resourceName: "monkey filled"), for: .normal)
        elephantButton.setImage(#imageLiteral(resourceName: "elephant outlined"), for: .normal)
        tigerButton.setImage(#imageLiteral(resourceName: "tiger outlined"), for: .normal)
    }
    
    @IBAction func onElephantTap(_ sender: UIButton) {
        animalTypeLabel.text = "Elephant"
        monkeyButton.setImage(#imageLiteral(resourceName: "monkey outlined"), for: .normal)
        elephantButton.setImage(#imageLiteral(resourceName: "elephant filled"), for: .normal)
        tigerButton.setImage(#imageLiteral(resourceName: "tiger outlined"), for: .normal)
    }
    
    @IBAction func onTigerTap(_ sender: UIButton) {
        animalTypeLabel.text = "Tiger"
        tigerButton.setImage(#imageLiteral(resourceName: "tiger filled"), for: .normal)
        monkeyButton.setImage(#imageLiteral(resourceName: "monkey outlined"), for: .normal)
        elephantButton.setImage(#imageLiteral(resourceName: "elephant outlined"), for: .normal)
    }
    
    @IBAction func onSlider(_ sender: UISlider) {
        fontSizeLabel.text = "\(Int(sender.value))"
        animalTypeLabel.font = UIFont.systemFont(ofSize: CGFloat(sender.value))
    }
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if sender.isOn {
            textSizeSlider.isHidden = true
            fontSizeLabel.isHidden = true
        } else {
            textSizeSlider.isHidden = false
            fontSizeLabel.isHidden = false
        }
    }
    
    @IBAction func changeBackground(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = UIColor.white
        } else if sender.selectedSegmentIndex == 1 {
            view.backgroundColor = UIColor.red
        } else if sender.selectedSegmentIndex == 2 {
            view.backgroundColor = UIColor.green
        } else if sender.selectedSegmentIndex == 3 {
            view.backgroundColor = UIColor.blue
        }
    }
    
}
