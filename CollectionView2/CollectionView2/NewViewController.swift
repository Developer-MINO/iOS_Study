//
//  NewViewController.swift
//  CollectionView2
//
//  Created by 김지섭 on 2016. 11. 4..
//  Copyright © 2016년 Study. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let ap = UIApplication.shared.delegate as! AppDelegate
    
    var image = UIImage()
    
    
    @IBAction func Back(_ sender: Any) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ap.brightChange = 0.2
        UIScreen.main.brightness = 0.2
        self.imageView.image = self.image
        self.titleLabel.text = self.title

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
