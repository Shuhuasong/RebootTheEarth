//
//  ShareViewController.swift
//  RebootTheEarth
//
//  Created by Toby Kreiman on 9/20/19.
//  Copyright © 2019 Toby Kreiman. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imgView = self.view.viewWithTag(1) {
            imgView.layer.cornerRadius = imgView.frame.height/2
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
