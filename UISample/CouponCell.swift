//
//  CouponCell.swift
//  UISample
//
//  Created by mino on 2016. 11. 16..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit

class CouponCell : UITableViewCell {
    @IBOutlet weak var couponProductName: UILabel!      //쿠폰 상품명
    @IBOutlet weak var couponNumber: UILabel!           //쿠폰번호 뒤 네 자리
    @IBOutlet weak var couponExpirationDate: UILabel!   //유효기간
}
