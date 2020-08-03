//
//  ImageGalleryCollectionViewController.swift
//  ImageGallery app
//
//  Created by Maria Yelfimova on 8/2/20.
//  Copyright © 2020 Maria Yelfimova. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ImageGalleryCollectionViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        // setting the following means to calculate cell size using autolayout
        // make sure that the top-level view in your custom cell is a generic UIView
        // and that it is pinned to the edges of the cell
        // put all the rest of your custom cell UI into the generic UIView
        // and set up autolayout so that the size of the generic UIView is forced to be what you want
        flowLayout?.itemSize = UICollectionViewFlowLayout.automaticSize
        flowLayout?.estimatedItemSize = CGSize(width: 100, height: 120)

        // Do any additional setup after loading the view.
    }

    // this is a useful var to define
    // it lets you get at the default flow layout for a collection view
    private var flowLayout: UICollectionViewFlowLayout? {
        return collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return GalleryImages.imageNames.count
    }
    
    private func getImageof(at indexPath: IndexPath) -> String {
        return GalleryImages.images[indexPath.item] ?? ""
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageReuse", for: indexPath)
    
        if let imageCell = cell as? ImageCollectionViewCell {
            imageCell.imageView.image = UIImage(named: getImageof(at: indexPath))
            
        }
    
        return cell
    }
    
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
