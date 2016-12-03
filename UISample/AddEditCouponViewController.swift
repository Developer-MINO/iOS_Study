//
//  AddEditCouponViewController.swift
//  UISample
//
//  Created by mino on 2016. 11. 16..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit

class AddEditCouponViewController: UIViewController {
    @IBOutlet weak var addCouponProductName: UITextField!
    @IBOutlet weak var addCouponNumber: UITextField!
    @IBOutlet weak var addCouponExpirationDate: UITextField!
    
    @IBAction func addButton(_ sender: AnyObject) {
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        if let name = self.addCouponProductName.text {
            ad?.adCouponProductName.append(name)
        }
        
        if let num = self.addCouponNumber.text {
            ad?.adCouponNumber.append(num)
        }
        
        if let date = self.addCouponExpirationDate.text {
            ad?.adCouponExpirationDate.append(date)
        }
        
        _ = self.navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
