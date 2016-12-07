//
//  ViewController.swift
//  MapInitialcenterDemo-swift
//
//  Created by eidan on 16/12/6.
//  Copyright © 2016年 AutoNavi. All rights reserved.
//


import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var beijingBtn: UIButton!
    @IBOutlet weak var hangzhouBtn: UIButton!
    @IBOutlet weak var shanghaiBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "选择地图中心点所在城市";
        
        let cornerRadius = 8;
        let borderWidth = 1;
        let borderColor = UIColor.init(red: 0.0, green: 122/255.0, blue: 1.0, alpha: 0.0);
        
        self.beijingBtn.layer.cornerRadius = CGFloat(cornerRadius);
        self.hangzhouBtn.layer.cornerRadius = CGFloat(cornerRadius);
        self.shanghaiBtn.layer.cornerRadius = CGFloat(cornerRadius);
        
        self.beijingBtn.layer.borderWidth = CGFloat(borderWidth);
        self.hangzhouBtn.layer.borderWidth = CGFloat(borderWidth);
        self.shanghaiBtn.layer.borderWidth = CGFloat(borderWidth);
        
        self.beijingBtn.layer.borderColor = borderColor.cgColor;
        self.hangzhouBtn.layer.borderColor = borderColor.cgColor;
        self.shanghaiBtn.layer.borderColor = borderColor.cgColor;
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cityBtnClick(_ sender: UIButton) {
        
        let mapVC = ShowViewController(nibName: "ShowViewController", bundle: nil);

        if (sender.tag == 1) {  //北京
            mapVC.latitude = 39.904983;
            mapVC.longitude = 116.427287;
        } else if (sender.tag == 2){  //杭州
            mapVC.latitude = 30.245122;
            mapVC.longitude = 120.147589;
        } else if (sender.tag == 3){  //上海
            mapVC.latitude = 31.231706;
            mapVC.longitude = 121.472644;
        }
        
        self.navigationController?.pushViewController(mapVC, animated: true);
        
    }


}

