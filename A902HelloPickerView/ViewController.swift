//
//  ViewController.swift
//  A902HelloPickerView
//
//  Created by 申潤五 on 2022/9/24.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    @IBOutlet weak var thePickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        thePickerView.dataSource = self
        thePickerView.delegate = self
    }

    //MARK:Picker Delegate & DataSource
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "欄：\(component) 行:\(row)"
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
}
