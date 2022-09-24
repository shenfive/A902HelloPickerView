//
//  ViewController.swift
//  A902HelloPickerView
//
//  Created by 申潤五 on 2022/9/24.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    @IBOutlet weak var thePickerView: UIPickerView!
    
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚宮"]
    var bloudType = ["請選擇你的血型","A","B","O","AB"]
    
    var selectedBloudType = ""
    var selectedAst = ""
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? Page2ViewController{
            nextVC.a = selectedBloudType
            nextVC.b = selectedAst
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thePickerView.dataSource = self
        thePickerView.delegate = self
    }

    //MARK:Picker Delegate & DataSource
    
    //選擇某項之後
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row:\(row)  com:\(component)")
        if pickerView.selectedRow(inComponent: 0) != 0
            && pickerView.selectedRow(inComponent: 1) != 0{
            print("go Next Page")
            selectedBloudType = bloudType[pickerView.selectedRow(inComponent: 0)]
            selectedAst = astrological[pickerView.selectedRow(inComponent: 1)]
            
            performSegue(withIdentifier: "goNextPage", sender: self)
        }else{
            print("stay")
        }
        
    }
    
    
    
    //顯示文字
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component{
        case 0:
            return bloudType[row]
        case 1:
            return astrological[row]
        default:
            return ""
        }
    }
    //幾欄
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    //幾 row
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component{
        case 0:
            return bloudType.count
        case 1:
            return astrological.count
        default:
            return 0
        }
    }
}
