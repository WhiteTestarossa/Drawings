//
//  TimerViewController.swift
//  Drawings
//
//  Created by Daniel Belokursky on 10.08.22.
//

import UIKit

class TimerViewController: UIViewController {
    
    var saveButton: Button!
    var slider: UISlider!
    var leftNumberLabel: UILabel!
    var rightNumberLabel: UILabel!
    var centerNumberLabel: UILabel!
    @objc public var artistVC: ArtistViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        self.view.backgroundColor = UIColor.white
        self.view.layer.cornerRadius = 40
        self.view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.view.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.view.layer.shadowOpacity = 1.0;
        self.view.layer.shadowRadius = 8.0;
        
        saveButton = Button(title: "Save")
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.addTarget(self, action: #selector(saveTapped(_:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(saveButton)
        
        NSLayoutConstraint.activate([
            saveButton.heightAnchor.constraint(equalToConstant: 32.0),
            saveButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20.0),
            saveButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40.0),
            saveButton.widthAnchor.constraint(equalToConstant: 85.0)
        ])
        
        slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumValue = 1.0
        slider.maximumValue = 5.0
        slider.tintColor = UIColor(red: 33.0/255.0, green: 176.0/255, blue: 142.0/255.0, alpha: 1.0)
        slider.value = artistVC.time
        slider.addTarget(self, action: #selector(sliderDidChange(sender:)), for: .valueChanged)
        
        self.view.addSubview(slider)
        NSLayoutConstraint.activate([
            slider.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 92.0),
            slider.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 74.0),
            slider.heightAnchor.constraint(equalToConstant: 44.0),
            slider.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -78.0)
        ])
        
        leftNumberLabel = UILabel()
        leftNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        leftNumberLabel.text = "1.00"
        leftNumberLabel.font = UIFont(name: "Montserrat-Regular", size: 18.0)
        
        self.view.addSubview(leftNumberLabel)
        NSLayoutConstraint.activate([
            leftNumberLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 26.0),
            leftNumberLabel.centerYAnchor.constraint(equalTo: slider.centerYAnchor)
        ])
        
        rightNumberLabel = UILabel()
        rightNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        rightNumberLabel.text = "5.00"
        rightNumberLabel.font = UIFont(name: "Montserrat-Regular", size: 18.0)
        
        self.view.addSubview(rightNumberLabel)
        NSLayoutConstraint.activate([
            rightNumberLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -26.0),
            rightNumberLabel.centerYAnchor.constraint(equalTo: slider.centerYAnchor)
        ])
        
        centerNumberLabel = UILabel()
        centerNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        centerNumberLabel.text = String(format: "%.2f", slider.value)
        centerNumberLabel.font = UIFont(name: "Montserrat-Regular", size: 18.0)
        
        self.view.addSubview(centerNumberLabel)
        NSLayoutConstraint.activate([
            centerNumberLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            centerNumberLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    @objc func sliderDidChange(sender: UISlider) {
        centerNumberLabel.text = String(format: "%.2f", sender.value)
    }
    
    @objc func saveTapped(_ sender: UIButton)  {
        artistVC.time = slider.value;
        
        self.willMove(toParent: nil);
        self.view.removeFromSuperview();
        self.removeFromParent();
    }
    
    
}
