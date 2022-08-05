//
//  DrawingsViewController.swift
//  Drawings
//
//  Created by Daniel Belokursky on 4.08.22.
//

import UIKit


class DrawingsViewController: UIViewController {
    
    var planetButton: Button!
    var headButton: Button!
    var treeButton: Button!
    var landscapeButton: Button!
   
    //MARK: View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupUI()
    }
    
    //MARK: Setup Navigation Bar
    func setupNavigationBar() {
        view.backgroundColor = .white
        
        self.navigationController?.navigationBar.tintColor = UIColor(red: 33.0/255.0, green: 176.0/255, blue: 142.0/255.0, alpha: 1.0)
        self.navigationItem.title = "Drawings";
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont(name: "Montserrat-Regular", size: 17.0)!]
    }
    
    func setupUI() {
        planetButton = Button(title: "Planet")
        planetButton.contentEdgeInsets = UIEdgeInsets(top: 9.0, left: 47.0, bottom: 9.0, right: 47.0)
        self.view.addSubview(planetButton)
        
        NSLayoutConstraint.activate([
            planetButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            planetButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50.0),
            planetButton.heightAnchor.constraint(equalToConstant: 40.0),
            planetButton.widthAnchor.constraint(equalToConstant: 200.0)
        ])
        
        headButton = Button(title: "Head")
        headButton.contentEdgeInsets = UIEdgeInsets(top: 9.0, left: 47.0, bottom: 9.0, right: 47.0)
        self.view.addSubview(headButton)
        
        NSLayoutConstraint.activate([
            headButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            headButton.topAnchor.constraint(equalTo: self.planetButton.bottomAnchor, constant: 15.0),
            headButton.widthAnchor.constraint(equalTo: self.planetButton.widthAnchor),
            headButton.heightAnchor.constraint(equalTo: self.planetButton.heightAnchor)
        ])
        
        treeButton = Button(title: "Tree")
        treeButton.contentEdgeInsets = UIEdgeInsets(top: 9.0, left: 47.0, bottom: 9.0, right: 47.0)
        self.view.addSubview(treeButton)
        
        NSLayoutConstraint.activate([
            treeButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            treeButton.topAnchor.constraint(equalTo: self.headButton.bottomAnchor, constant: 15.0),
            treeButton.widthAnchor.constraint(equalTo: self.planetButton.widthAnchor),
            treeButton.heightAnchor.constraint(equalTo: self.planetButton.heightAnchor)
        ])
        
        landscapeButton = Button(title: "Landscape")
        landscapeButton.contentEdgeInsets = UIEdgeInsets(top: 9.0, left: 47.0, bottom: 9.0, right: 47.0)
        self.view.addSubview(landscapeButton)
        
        NSLayoutConstraint.activate([
            landscapeButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            landscapeButton.topAnchor.constraint(equalTo: self.treeButton.bottomAnchor, constant: 15.0),
            landscapeButton.widthAnchor.constraint(equalTo: self.planetButton.widthAnchor),
            landscapeButton.heightAnchor.constraint(equalTo: self.planetButton.heightAnchor)
        ])
    }
}
