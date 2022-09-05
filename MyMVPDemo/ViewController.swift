//
//  ViewController.swift
//  MyMVPDemo
//
//  Created by Mustafa Ahmed on 05/09/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.pushViewController(LoginVC(cameFromReservation: false), animated: true)
    }


}

