//
//  CouponViewController.swift
//  UISample
//
//  Created by mino on 2016. 11. 16..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit

class CouponViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var couponTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.couponTableView.reloadData()
        print("count = \((ad?.adCouponProductName.count)!)")
        
        if (ad?.adCouponProductName.count)! >= 1 {
            let cnt = (ad?.adCouponProductName.count)!-1
            
            for _ in 0...cnt {
                print("name = \(ad?.adCouponProductName[cnt])")
                print("num = \(ad?.adCouponNumber[cnt])")
                print("date = \(ad?.adCouponExpirationDate[cnt])")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var ad = UIApplication.shared.delegate as? AppDelegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (ad?.adCouponProductName.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CouponCell", for: indexPath) as! CouponCell
        
        if let name = ad?.adCouponProductName[indexPath.row] {
            cell.couponProductName.text = name
        }
        
        if let num = ad?.adCouponNumber[indexPath.row] {
            cell.couponNumber.text = num
        }
        
        if let date = ad?.adCouponExpirationDate[indexPath.row] {
            cell.couponExpirationDate.text = date
        }
        
//        cell.couponProductName.text = ad?.adCouponProductName[indexPath.row]
//        cell.couponNumber.text = ad?.adCouponNumber[indexPath.row]
//        cell.couponExpirationDate.text = ad?.adCouponExpirationDate[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("Touch Table Row as %d", indexPath.row)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        <#code#>
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
