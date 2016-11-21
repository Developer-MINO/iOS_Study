//
//  AddMemebership.swift
//  UISample
//
//  Created by 김지섭 on 2016. 11. 11..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit


class AddMemebership: UIViewController {
      // 멤버쉽 추가 페이지
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if ad?.modifyCheck == 1 {
            //수정 버튼을 통해 들어온 것 확인
            self.navigationItem.title = "멤버십 카드 수정"
            //네비게이션 타이틀 변경
            self.navigationItem.rightBarButtonItem?.title = "수정"
            //네비게이션 오른쪽 아이템 타이틀 변경
            
            self.paramName.text = ad?.membershipName[(ad?.showNow)!]
            //텍스트 필드에 이름 값 띄우기
            self.paramCode.text = String(describing: (ad?.barcode[(ad?.showNow)!])!)
            //텍스트 필드에 바코드 값 띄우기
            
        }
        
        

        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var paramName: UITextField!
    @IBOutlet weak var paramCode: UITextField!
    let ad = UIApplication.shared.delegate as? AppDelegate
   
   

    @IBAction func Add(_ sender: AnyObject) {
        // 추가 버튼 누를시
        
        if ad?.modifyCheck == 1 {
            ad?.membershipName[(ad?.showNow)!] = self.paramName.text!
            ad?.barcode[(ad?.showNow)!] = Int(self.paramCode.text!)!
            // 배열 수정
            
        }
        else {
            ad?.membershipName.append(self.paramName.text!)
            ad?.barcode.append(Int(self.paramCode.text!)!)
            ad?.membershipLogo.append(UIImage(named: "default"))
            // 배열 내에 값 추가
            
        }
        
        
        
        
        _ = self.navigationController?.popViewController(animated: true)
        // 화면 되돌아가기
    }
    

}
