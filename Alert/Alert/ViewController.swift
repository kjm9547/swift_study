//
//  ViewController.swift
//  Alert
//
//  Created by 김재민 on 2024/05/22.
//

import UIKit

class ViewController: UIViewController {

    let imgOn = UIImage(named: "lamp-on.png")
    let imgOff = UIImage(named: "lamp-off.png")
    let imgRemove = UIImage(named: "lamp-remove.png")
    var isLampOn = true
    @IBOutlet weak var lampImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampImg.image = imgOn
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        if(isLampOn){
            let lampOnAlret = UIAlertController(title: "경고", message: "현재 on", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title:"네 알겠습니다.",style: UIAlertAction.Style.default, handler: nil)
            lampOnAlret.addAction(onAction)
            present(lampOnAlret,animated: true,completion: nil)
        }
        else{
            lampImg.image = imgOn
            isLampOn = true
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if(isLampOn){
            let lampOffAlret = UIAlertController(title: "램프끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title:"네 알겠습니다.",style: UIAlertAction.Style.default, handler:{
                ACTION in self.lampImg.image = self.imgOff
                self.isLampOn = false
            })
            let cancelAction = UIAlertAction(title:"아니오",style: UIAlertAction.Style.default,handler: nil)
            lampOffAlret.addAction(offAction)
            lampOffAlret.addAction(cancelAction)
            present(lampOffAlret,animated: true,completion: nil)
        }
       
    }
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        
        let offAction = UIAlertAction(title: "아니오 끕니다.", style: UIAlertAction.Style.default,handler: {
            ACTION in self.lampImg.image = self.imgOff
            self.isLampOn = false
        })
        let onAction = UIAlertAction(title: "dksldh, zuqslek.", style: UIAlertAction.Style.default,handler: {
            ACTION in self.lampImg.image = self.imgOn
            self.isLampOn = true
        })
        let removeAction = UIAlertAction(title: "네, 제거합니다.", style: UIAlertAction.Style.destructive,handler: {
            ACTION in self.lampImg.image = self.imgRemove
            self.isLampOn = false
        })
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        present(lampRemoveAlert,animated: true,completion: nil)
        
    }
}

