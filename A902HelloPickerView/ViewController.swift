//
//  ViewController.swift
//  A902HelloPickerView
//
//  Created by 申潤五 on 2022/9/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    

    @IBOutlet weak var thePickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        thePickerView.dataSource = self
    }


}

