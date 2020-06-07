//
//  ViewController.swift
//  WMSegmentControlAPP
//
//  Created by Nadia Mettioui on 07/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import UIKit
import WMSegmentControl
import BetterSegmentedControl
class ViewController: UIViewController {
    
    @IBOutlet var control3: BetterSegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
        setupWMSegmentControl()
        setupBetterSegmentControl()
        setupBetterSegmentControl2()
        setupBetterSegmentControl3()
         setupBetterSegmentControl4()
        setupappleStyledControl()
        
        
    }
    func setupWMSegmentControl() {
        let anotherSegment = WMSegment(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        view.addSubview(anotherSegment)
        anotherSegment.type = .normal // normal (Default),imageOnTop, onlyImage
        anotherSegment.selectorType = .bottomBar //normal (Default), bottomBar
        // If you want round selector
        anotherSegment.isRounded = true //By default false
        anotherSegment.largeContentTitle = "segment 1"
        //Set titles of your segment
        anotherSegment.buttonTitles = "Apple,Google,Facebook"
        // anotherSegment.title
        //Set images
        anotherSegment.buttonImages = "apple_light,google_light,facebook_light"
        //Set selected images
        // anotherSegment.buttonSelectedImages = “apple_dark,google_dark,facebook_dark”
        // set text color for non – selected segment values
        anotherSegment.textColor = .white
        // set text color for selected segment value
        anotherSegment.selectorTextColor = .orange
        //set Color for selected segment
        anotherSegment.selectorColor = .orange
        //set font for selcted segment value
        anotherSegment.SelectedFont = UIFont(name: "ChalkboardSE-Bold", size: 15)!
        // set font for segment options
        anotherSegment.normalFont = UIFont(name: "ChalkboardSE-Regular", size: 15)!
        anotherSegment.onValueChanged = { index in
            // view.addSubview(self.anotherSegment)
            print("okokoko")
            
        }
    }
    
    func setupBetterSegmentControl() {
        let control = BetterSegmentedControl(
            frame: CGRect(x: 100, y: 250, width: 200, height: 44),
            segments: LabelSegment.segments(withTitles: ["One", "Two", "Three"],
                                            normalFont: UIFont(name: "HelveticaNeue-Light", size: 14.0)!,
                                            normalTextColor: .lightGray,
                                            selectedFont: UIFont(name: "HelveticaNeue-Bold", size: 14.0)!,
                                            selectedTextColor: .white),
            index: 1,
            options: [.backgroundColor(.purple),
                      .indicatorViewBackgroundColor(.blue)])
        self.view.addSubview(control)
    }
    
    
    
    
    func setupBetterSegmentControl2() {
        let navigationSegmentedControl = BetterSegmentedControl(
            frame: CGRect(x: 100.0, y: 350.0, width: 200.0, height: 44),
            segments: LabelSegment.segments(withTitles: ["Lights On", "Lights Off"],
                                            normalFont: UIFont(name: "Avenir", size: 13.0)!,
                                            normalTextColor: .white,
                                           // normalTextColor: .lightGray,
                                            selectedFont: UIFont(name: "Avenir", size: 13.0)!,
                                            selectedTextColor: .white),
            options:[.backgroundColor(.darkGray),
                     .indicatorViewBackgroundColor(UIColor(red: 0.55, green: 0.26, blue: 0.86, alpha: 1.00)),
                     .cornerRadius(3.0),
                     .animationSpringDamping(1.0)])
        view.addSubview(navigationSegmentedControl)
        navigationSegmentedControl.addTarget(self,
        action: #selector(ViewController.navigationSegmentedControlValueChanged(_:)),
        for: .valueChanged)
        //navigationSegmentedControl.addTarget(self,
        //                                     action: #selector(ViewController.navigationSegmentedControlValueChanged(_:)),
        //                                     for: .valueChanged)
        //navigationItem.titleView = navigationSegmentedControl
    }
    
    // Control 3: Many options
    func setupBetterSegmentControl3(){
        
        
        control3.segments = LabelSegment.segments(withTitles: ["One", "Two", "Three", "Four", "Five", "Six"],
                                                  normalFont: UIFont(name: "HelveticaNeue-Light", size: 14.0)!,
                                                  normalTextColor: .white,
                                                  selectedFont: UIFont(name: "HelveticaNeue-Medium", size: 14.0)!,
                                                  selectedTextColor: UIColor(red: 0.20, green: 0.68, blue: 0.27, alpha: 1.00))
        //frame: CGRect(x: 100.0, y: 400.0, width: 200.0, height: 30.0))
    }
    
    func setupBetterSegmentControl4(){
    let iconsSegmentedControl = BetterSegmentedControl(
               frame: CGRect(x: 100.0, y: 500.0, width: view.bounds.width / 3, height: 30.0),
               segments: IconSegment.segments(withIcons: [#imageLiteral(resourceName: "16"),
                                                          #imageLiteral(resourceName: "13")],
                                              iconSize: CGSize(width: 20.0, height: 20.0),
                                              normalIconTintColor: .white,
                                              selectedIconTintColor: UIColor(red: 0.16, green: 0.64, blue: 0.94, alpha: 1.00)),
               options: [.cornerRadius(15.0),
                         .backgroundColor(UIColor(red: 0.16, green: 0.64, blue: 0.94, alpha: 1.00)),
                         .indicatorViewBackgroundColor(.white)])
           view.addSubview(iconsSegmentedControl)
    }
    
    func setupappleStyledControl(){
        
    let appleStyledControl: BetterSegmentedControl = .appleStyled(frame: CGRect(x: 20,
                                                                                       y: 500,
                                                                                       width: view.bounds.width - 32.0,
                                                                                       height: 32.0),
                                                                         titles: ["First", "Second", "Third"])
           view.addSubview(appleStyledControl)
       }

    
    @objc func navigationSegmentedControlValueChanged(_ sender: BetterSegmentedControl) {
           if sender.index == 0 {
               print("Turning lights on.")
               view.backgroundColor = .systemRed
           } else {
               print("Turning lights off.")
               view.backgroundColor = .black
           }
       }
}
