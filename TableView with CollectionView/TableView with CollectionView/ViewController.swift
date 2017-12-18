//
//  ViewController.swift
//  TableView with CollectionView
//
//  Created by EthanLin on 2017/12/18.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCustomTableViewCell
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Special1"
        }else {
            return "Special2"
        }
    }
    
   

   
    
    //圖片陣列
    var images = ["scene1","scene2","scene3","scene4","scene5","scene6","scene7","scene8","scene9","scene10"]

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewcell", for: indexPath) as! MyCollectionViewCell
        if indexPath.section == 0{
            collectionViewCell.myCollectionViewCellImageView.image = UIImage(named: images[indexPath.row])
        }else {
             collectionViewCell.myCollectionViewCellImageView.image = UIImage(named: images[indexPath.row])
        }
        
        
        return collectionViewCell
    }
    
    
    
    
}

