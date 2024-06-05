//
//  ViewController.swift
//  PickerView
//
//  Created by 김재민 on 2024/05/20.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageArray = [UIImage?]()
    var imagesFileName = [
        "1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg",
        "7.jpg","8.jpg","9.jpg","10.jpg"
    ]
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0 ..< MAX_ARRAY_NUM{
            let image = UIImage(named: imagesFileName[i])
            imageArray.append(image)
        }
        
        lblImageFileName.text = imagesFileName[0]
        imageView.image = imageArray[0]
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent
                    component:Int)->Int{
        return imagesFileName.count
    }
//    func pickerView(_ pickerView: UIPickerView,titleForRow row: Int,forComponentcomponent:Int) -> String? {
//        return imagesFileName[row]
//    }
    func pickerView(_ pickerView: UIPickerView,viewForRow row: Int,forComponent component:Int,reusing view:UIView?) -> UIView{
            let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            return imageView
        }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        lblImageFileName.text = imagesFileName[row]
        imageView.image = imageArray[row]
    }
    
}

