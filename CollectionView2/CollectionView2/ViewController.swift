//
//  ViewController.swift
//  CollectionView2
//
//  Created by 김지섭 on 2016. 11. 4..
//  Copyright © 2016년 Study. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let ap = UIApplication.shared.delegate as! AppDelegate
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    ////////////////////////////////////////////////////////////////////////////////////
    let appleProducts = ["라이언1","라이언2","라이언3","라이언4","라이언5","라이언6"]
    let imageAraay = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6")]
    

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.appleProducts.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        
        cell.imageView.image = self.imageAraay[indexPath.row]
        cell.titleLabel.text = self.appleProducts[indexPath.row]
        
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showImage", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showImage"
        {
            ap.bright = UIScreen.main.brightness
            let indexPaths = self.collectionView.indexPathsForSelectedItems!
            let indexPath = indexPaths[0] as NSIndexPath
            
            let vc = segue.destination as! NewViewController
            
            vc.image = self.imageAraay[indexPath.row]!
            vc.title = self.appleProducts[indexPath.row]
        }
    }
    ///////////////////////////////////////////////////////////////////////////////////////
    
    @IBAction func unwindToMainViewController(segue : UIStoryboardSegue){
        UIScreen.main.brightness = ap.bright!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
