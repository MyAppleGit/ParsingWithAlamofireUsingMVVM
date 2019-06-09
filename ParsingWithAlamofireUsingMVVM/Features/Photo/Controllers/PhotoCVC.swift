//
//  PhotoCVC.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/8/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import SDWebImage

class PhotoCVC: UICollectionViewController {
    
    var photoVM : PhotoVM?
    var photos = [Photo]()
    var dispose = DisposeBag()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor(red: 237/255, green: 239/255, blue: 237/255, alpha: 1)
        
        registerXib()
        getPhotos()
        
    }
    
    func getPhotos(){
        self.photoVM = PhotoVM()
        self.photoVM?.getPhotos()
        self.photoVM?.photoBR.skip(1).subscribe(onNext: { (photos) in
            self.photos = photos
            self.collectionView.reloadData()
        }, onError: { (error) in
            print(error.localizedDescription)
        }).disposed(by: self.dispose)
    }
    
    func registerXib(){
        
        collectionView.register(PhotosCell.nib, forCellWithReuseIdentifier: PhotosCell.identifier)
    }
    
    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCell.identifier, for: indexPath) as! PhotosCell
        
        let photo = self.photos[indexPath.row]
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius  = 10
        cell.backgroundColor = UIColor(white: 1, alpha: 1)
        
        cell.photo.layer.masksToBounds = true
        cell.photo.layer.cornerRadius = 10
        cell.photo.translatesAutoresizingMaskIntoConstraints  = false
        cell.photo.contentMode = .scaleToFill
        
        cell.photo.sd_setImage(with: URL(string: photo.url), placeholderImage: UIImage(named: "no_image.png"))
        
        cell.title.font = UIFont(descriptor: UIFontDescriptor.init(name: "Semibold", size: 20), size: 20)
        cell.title.numberOfLines = 0
        cell.title.textAlignment = NSTextAlignment.center
        
        cell.title.text = photo.title
        
        return cell
    }
    
}


extension PhotoCVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 16, height: 220)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 8)
    }
    
}
