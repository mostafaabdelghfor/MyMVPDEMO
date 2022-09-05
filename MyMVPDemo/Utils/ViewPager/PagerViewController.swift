//
//  ViewController.swift
//  KiddowzNursery
//
//  Created by Mohamed Elmaazy on 3/23/20.
//  Copyright © 2020 Mohamed Hossam Khedr. All rights reserved.
//

import UIKit

class PagerViewController: UIViewController {

    @IBOutlet weak var collectionViewTitles: UICollectionView!
    @IBOutlet weak var collectionViewControllers: UICollectionView!
    @IBOutlet weak var constraintHeightCollectionViewTitles: NSLayoutConstraint!
    
    public var titleHeight: CGFloat = 50
    public var titleWidth: CGFloat = 0
    
    var arrayTitles = [String]()
    var arrayViewControllers = [UIViewController]()
    private var containerView = UIView()
    private var viewController = UIViewController()
    var defaultTitleColor: UIColor = .black
    var selectedTitleColor: UIColor = .white
    var defaultIndicatorColor: UIColor = .clear
    var selectedIndicatorColor: UIColor = .black
    var defaultBackgroundColor: UIColor = .clear
    var selectedBackgroundColor: UIColor = .clear
    var defaultFont = UIFont.boldSystemFont(ofSize: 18.0)
    var selectedFont = UIFont.boldSystemFont(ofSize: 18.0)
    var selectedIndex = 0
    var indicatorHeight: CGFloat = 2
    var arrayTitlesModel = [PagerTitleModel]()
    var selectIndex = 0
    
    init(containerView: UIView, viewController: UIViewController, arrayTitles: [String], arrayViewControllers: [UIViewController]) {
        self.arrayTitles = arrayTitles
        self.arrayViewControllers = arrayViewControllers
        self.containerView = containerView
        self.viewController = viewController
        super.init(nibName: "PagerViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        initCollectionView()
        constraintHeightCollectionViewTitles.constant = titleHeight
        for vc in arrayViewControllers {
            vc.view.frame = containerView.bounds
        }
        for title in arrayTitles {
            let model = PagerTitleModel()
            model.name = title
            model.titleDefaultColor = defaultTitleColor
            model.titleSelectedColor = selectedTitleColor
            model.defaultFont = defaultFont
            model.selectedFont = selectedFont
            model.defaultIndicatorColor = defaultIndicatorColor
            model.selectedIndicatorColor = selectedIndicatorColor
            model.defaultBackgroundColor = defaultBackgroundColor
            model.selectedBackgrounColor = selectedBackgroundColor
            model.indicatorHeight = indicatorHeight
                
            let label = UILabel()
            label.text = title
            label.font = selectedFont
            model.width = label.intrinsicContentSize.width + 20
            
            arrayTitlesModel.append(model)
        }
//        collectionViewTitles.delegate = self
//        collectionViewTitles.dataSource = self
        collectionViewTitles.reloadData()
        if selectIndex < arrayTitles.count && selectIndex != 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.selectedIndex = self.selectIndex
                self.collectionViewTitles.reloadData()
                self.collectionViewControllers.scrollToItem(at:IndexPath(item: self.selectIndex, section: 0), at: .right, animated: true)
            }
        }
    }
}
