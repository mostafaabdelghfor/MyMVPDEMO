//
//  OptionPopupViewController.swift
//  nasTrends
//
//  Created by Ahmed gamal on 1/31/19.
//  Copyright © 2019 Mohamed Elmaazy. All rights reserved.
//

import UIKit

@objc protocol OptionPopupDelegate {
    func makeConfirm(ok: Bool, type: String, extraData: String)
    @objc optional func makeConfirm(ok: Bool, type: String, extraData: String, extraData2: String)
}

class OptionPopupViewController: UIViewController {

    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var viewAlert: UIView!
    
    var delegate: OptionPopupDelegate?
    var message = ""
    var type = ""
    var extraData = ""
    var extraData2 = ""
    
    init(message: String, type: String, extraData: String, extraData2: String) {
        self.message = message
        self.type = type
        self.extraData = extraData
        self.extraData2 = extraData2
        super.init(nibName: "OptionPopupViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMessage.text = message
        btnOk.setBorder(color: .fromHex(hex: "14CCBF"), radius: 20, borderWidth: 2)
        btnCancel.setBorder(color: .fromHex(hex: "F0454E"), radius: 20, borderWidth: 2)
        disableDarkMode()
        LottieGifHandler.instance.playGif(view: viewAlert, name: "65476-blue-alert")
    }

    @IBAction func ok(_ sender: Any) {
        dismiss(animated: true, completion: {
            self.delegate?.makeConfirm(ok: true, type: self.type, extraData: self.extraData)
            self.delegate?.makeConfirm?(ok: true, type: self.type, extraData: self.extraData, extraData2: self.extraData2)
        })
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: {
            self.delegate?.makeConfirm(ok: false, type: self.type, extraData: self.extraData)
            self.delegate?.makeConfirm?(ok: false, type: self.type, extraData: self.extraData, extraData2: self.extraData2)
        })
    }
}
