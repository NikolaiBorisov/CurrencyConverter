//
//  CurrencyManager.swift
//  CurrencyConverter_JSON
//
//  Created by NIKOLAI BORISOV on 26.03.2021.
//

import Foundation

//struct CurrencyManager {
//
//    var myCurrency: [String] = []
//    var myValues: [Double] = []
//
//    let pv = ViewController()
//
//    let url = URL(string: "http://data.fixer.io/api/latest?access_key=017cf6a3e2b6dd1ec1d991d3affbf694")
//
//    func fetchCurrency() {
//        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
//            if error != nil {
//                print("ERROR")
//            } else {
//                if let content = data {
//                    do {
//                        let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
//                        if let rates = myJson["rates"] as? NSDictionary {
//                            for (key, value) in rates {
//                                self.myCurrency.append((key as? String)!)
//                                self.myValues.append((value as? Double)!)
//                            }
//                        }
//
//                    } catch {
//
//                    }
//                }
//            }
//            DispatchQueue.main.async {
//                pv.pickerView.reloadAllComponents()
//            }
//        }
//        task.resume()
//    }
//}
