//
//  ChangeCityViewController.swift
//  ClimaApp
//
//  Created by Sebastian Buczek on 06/09/2019.
//  Copyright © 2019 Sebastian Buczek. All rights reserved.
//

import UIKit


protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    
    var  delegate : ChangeCityDelegate?
    
    
    @IBOutlet weak var changeCityTextfield: UITextField!
    
    
    @IBAction func getWeatherPressed(_ sender: UIButton) {
        
        let cityName = changeCityTextfield.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)

    }
}
