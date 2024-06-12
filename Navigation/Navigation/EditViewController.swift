//
//  EditViewController.swift
//  Navigation
//
//  Created by 김재민 on 2024/06/12.
//

import UIKit

class EditViewController: UIViewController {

    var textWayValue:String = ""
    var textMessage:String = ""
    
    @IBOutlet weak var lblWay: UILabel!
    @IBOutlet weak var txMessage: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
        txMessage.text - textMessage
    }
    

    @IBAction func btnDone(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
