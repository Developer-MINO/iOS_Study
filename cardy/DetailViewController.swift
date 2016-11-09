//
//  DetailViewController.swift
//  cardy
//
//  Created by Joosung Kim on 27/10/2016.
//  Copyright © 2016 Joosung Kim. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var barcodeIMG: UIImageView!
    
    @IBOutlet weak var couponTitleLabel: UILabel!
    @IBOutlet weak var couponTitle: UILabel!
    
    @IBOutlet weak var couponExpireDateLabel: UILabel!
    @IBOutlet weak var couponExpireDate: UILabel!
    
    @IBOutlet weak var couponNoLabel: UILabel!
    @IBOutlet weak var couponNo: UILabel!
    
    @IBOutlet weak var couponURLLabel: UILabel!
    @IBOutlet weak var couponURL: UILabel!

    @IBOutlet weak var originalText: UITextView!
    
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.barcodeIMG {
                label.image = detail.barcodeImg
            }
            //상품명 디테일 채우기
            if let label = self.couponTitleLabel {
                label.text = detail.couponTitle.label ?? "상품명"
            }
            if let label = self.couponTitle {
                label.text = detail.couponTitle.content ?? "상품명 가져오기에 실패하였습니다."
            }
            //유효기간 디테일 채우기
            if let label = self.couponExpireDateLabel {
                label.text = detail.couponExpireDate.label ?? "유효기간"
            }
            if let label = self.couponExpireDate {
                label.text = detail.couponExpireDate.content ?? "유효기간 가져오기에 실패하였습니다."
            }
            //쿠폰번호 디테일 채우기
            if let label = self.couponNoLabel {
                label.text = detail.couponNo.label ?? "쿠폰번호"
            }
            if let label = self.couponNo {
                label.text = detail.couponNo.content ?? "쿠폰번호 가져오기에 실패하였습니다."
            }
            //쿠폰URL 디테일 채우기
            if let label = self.couponURLLabel {
                label.text = detail.couponURL.label ?? "쿠폰URL"
            }
            if let label = self.couponURL {
                label.text = detail.couponURL.content ?? "쿠폰URL 가져오기에 실패하였습니다."
            }
            if let label = self.originalText {
                
                label.text = detail.originalText?[0]
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: ParsingBrain.CouponInfo? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

