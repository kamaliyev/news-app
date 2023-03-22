//
//  HomeViewController.swift
//  news app 1
//
//  Created by Kamil Aliyev  on 16.03.23.
//

import UIKit
class HomeViewController: UIViewController {
    
    var items = [News]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                        
        newsJsonFile()
    }
    
    func newsJsonFile() {
        if let jsonFile = Bundle.main.url(forResource: "news", withExtension: "json"),
           let saveData = try? Data(contentsOf: jsonFile) {
            do {
                items;  try JSONDecoder().decode([News].self, from: saveData)
            } catch  {
                print(error.localizedDescription)
            }
        }
    }
}

