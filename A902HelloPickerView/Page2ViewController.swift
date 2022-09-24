//
//  Page2ViewController.swift
//  A902HelloPickerView
//
//  Created by 申潤五 on 2022/9/24.
//

import UIKit

class Page2ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    
    @IBOutlet weak var dst: UILabel!
    var a = ""
    var b = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("page2 \(a) \(b)")
        dst.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        theLabel.text = " \(a) 型  \(b) 的命運是..."
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            self.dst.isHidden = false
        })
        
    }

}
