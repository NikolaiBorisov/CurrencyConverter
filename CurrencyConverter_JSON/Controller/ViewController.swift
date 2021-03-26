//
//  ViewController.swift
//  CurrencyConverter_JSON
//
//  Created by NIKOLAI BORISOV on 26.03.2021.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var inputTF: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    var myCurrency: [String] = []
    var myValues: [Double] = []
    var activeCurrency: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.round()
        button.roundAndBorder()
        outputLabel.round()
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=017cf6a3e2b6dd1ec1d991d3affbf694")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print("ERROR")
            } else {
                if let content = data {
                    do {
                        let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        if let rates = myJson["rates"] as? NSDictionary {
                            for (key, value) in rates {
                                self.myCurrency.append((key as? String)!)
                                self.myValues.append((value as? Double)!)
                            }
                        }
                        
                    } catch {
                        
                    }
                }
            }
            DispatchQueue.main.async {
                self.pickerView.reloadAllComponents()
            }
        }
        task.resume()
    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        if (inputTF.text != "") {
            outputLabel.text = String(Double(inputTF.text!)! * activeCurrency)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myCurrency.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myCurrency[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        activeCurrency = myValues[row]
    }
}

