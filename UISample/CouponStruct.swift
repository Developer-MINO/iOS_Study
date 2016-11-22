//
//  CouponStruct.swift
//  UISample
//
//  Created by 김지섭 on 2016. 11. 22..
//  Copyright © 2016년 mino. All rights reserved.
//

import Foundation
import UIKit

struct Coupon {
    var brand : String?
    var product : String?
    var barcode : Int?
    var logo : UIImage?
    var barcodeImage : UIImage?
    var favorite : Bool = false
    var expired : Date?
    var used : Bool = false
    var clipboard : String?
}

