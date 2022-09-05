////
////  PagerViewControllerExtensions.swift
////  KiddowzNursery
////
////  Created by Mohamed Elmaazy on 3/23/20.
////  Copyright © 2020 Mohamed Hossam Khedr. All rights reserved.
////
//
//import Foundation
//import UIKit
//import MOLH
//
//extension PagerViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    
//    func initCollectionView() {
//        collectionViewTitles.register("PagerTitleCollectionViewCell")
//        collectionViewControllers.register("PagerBodyCollectionViewCell")
//        if MOLHLanguage.isArabic() {
//            collectionViewTitles.transform = CGAffineTransform(scaleX: -1, y: 1)
//        }
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if collectionView == collectionViewTitles {
//            return CGSize(width: arrayTitlesModel[indexPath.row].width, height: collectionView.frame.height)
//        }
//        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return collectionView == collectionViewTitles ? arrayTitlesModel.count : arrayViewControllers.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if collectionView == collectionViewTitles {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PagerTitleCollectionViewCell", for: indexPath) as! PagerTitleCollectionViewCell
//            cell.setData(arrayTitlesModel[indexPath.row], selected: indexPath.row == selectedIndex)
//            if MOLHLanguage.isArabic() {
//                cell.transform = CGAffineTransform(scaleX: -1, y: 1)
//            }
//            return cell
//        } else {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PagerBodyCollectionViewCell", for: indexPath) as! PagerBodyCollectionViewCell
//            cell.setData(arrayViewControllers[indexPath.row])
//            return cell
//        }
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if collectionView == collectionViewTitles {
//            selectedIndex = indexPath.row
//            collectionViewTitles.reloadData()
//            collectionViewControllers.scrollToItem(at:indexPath, at: .right, animated: true)
//        }
//    }
//    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        view.endEditing(true)
//        if scrollView == collectionViewControllers {
//            let center = CGPoint(x: scrollView.contentOffset.x + (scrollView.frame.width / 2), y: (scrollView.frame.height / 2))
//            if let indexPath = collectionViewControllers.indexPathForItem(at: center) {
//                print("Visible cell index: \(indexPath.row)")
//                selectedIndex = indexPath.row
//                collectionViewTitles.reloadData()
//                collectionViewTitles.scrollToItem(at: indexPath, at: .right, animated: true)
//            }
//            
//        }
//    }
//}
//
