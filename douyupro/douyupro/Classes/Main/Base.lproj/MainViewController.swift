//
//  MainViewController.swift
//  douyupro
//
//  Created by zsh on 2025/1/7.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabName = ["Home", "Live", "Follow", "Profile"];
        addChildVc(tabName);
        // Do any additional setup after loading the view.
    }
    
    func addChildVc(_ tabName: Array<String>?) {
        if let tab = tabName {
            for storyId in tab {
                let childVc = UIStoryboard(name: storyId, bundle: nil).instantiateViewController(withIdentifier: storyId);
                self.addChild(childVc);
            }
        } else {
            print("tabName is nil");
        }
    }

}
