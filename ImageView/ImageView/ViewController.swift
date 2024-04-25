//
//  ViewController.swift
//  ImageView
//
//  Created by 김재민 on 2024/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    var isZoom = false
    var imgOn = UIImage?
    var imgOff = UIImage?
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "testImg")
        imgOn UIImage()
    }


    @IBAction func btnResizeImage(_ sender: Any) {
        
    }
    @IBAction func switchImageOnOff(_ sender: Any) {
    }
}

