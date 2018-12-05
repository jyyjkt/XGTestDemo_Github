//
//  XGTestController.swift
//  Pods-XGTestDemo_Example
//
//  Created by 梁星国 on 2018/12/4.
//

import UIKit
import Alamofire

open class XGTestController: UIViewController {

    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.backgroundColor = .orange
        button.setTitle("进入NextVC页", for: .normal)
        button.addTarget(self, action: #selector(self.buttonAction(sender:)), for: .touchUpInside)
        view.addSubview(button)
    }
    //MARK: 测试
    open func testLog () {
        print("组件化成功")
        print(Alamofire.HTTPMethod.get)
       
        
    }

    //MARK: 按钮实现
    @objc func buttonAction(sender: UIButton) -> Void {
        
        let nextTestVC = XGNextTestController()
        self.present(nextTestVC, animated: true) {
            
        }
        
    }
}
