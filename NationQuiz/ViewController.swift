//
//  ViewController.swift
//  NationQuiz
//
//  Created by zino-mac on 2020/02/08.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit

struct Nation{
    var name:String
    var img:UIImage!
}

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var t_input: UITextField!
    @IBOutlet weak var la_result: UILabel!
    
    //나라 정보 데이터 베이스
    var nationArray:Array=Array<Nation>()
    var index:Int=0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        nationArray.append(Nation.init(name:"America", img: UIImage(named: "1.png")))
        nationArray.append(Nation.init(name:"Malaysia", img: UIImage(named: "2.jpg")))
        nationArray.append(Nation.init(name:"Greece", img: UIImage(named: "3.jpg")))
        nationArray.append(Nation.init(name:"England", img: UIImage(named: "4.png")))
        nationArray.append(Nation.init(name:"Deutschland", img: UIImage(named: "5.jpg")))
        nationArray.append(Nation.init(name:"Spain", img: UIImage(named: "6.png")))
        nationArray.append(Nation.init(name:"France", img: UIImage(named: "7.jpg")))
        nationArray.append(Nation.init(name:"Russia", img: UIImage(named: "8.gif")))
        nationArray.append(Nation.init(name:"Brazil", img: UIImage(named: "9.png")))
        nationArray.append(Nation.init(name:"Canada", img: UIImage(named: "10.jpg")))
        nationArray.append(Nation.init(name:"Japan", img: UIImage(named: "11.jpg")))
        nationArray.append(Nation.init(name:"China", img: UIImage(named: "12.png")))
        nationArray.append(Nation.init(name:"Austrailia", img: UIImage(named: "13.gif")))
    }

    @IBAction func btnClick(_ sender: Any) {
        next()
    }
    
    func next(){
        if index < nationArray.count-1{ //배열의 끝이 아니라면 로직 진행
            if t_input.text == nationArray[index].name{
                index += 1
                imgView.image = nationArray[index].img
                la_result.text = "O"
            }else{
                la_result.text = "X"
            }
        }
        t_input.text=""
    }
}

