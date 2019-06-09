//
//  PostsCVC.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/9/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class PostCVC: UICollectionViewController {

    var post = [Post]()
    var postVM:PostViewModel?
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor(red: 237/255, green: 239/255, blue: 237/255, alpha: 1)
        
        registerXib()
        getPosts()
    }

    func registerXib(){
        collectionView.register(PostCell.nib, forCellWithReuseIdentifier: PostCell.identifier)
    }
    
    func getPosts() {
        self.postVM = PostViewModel()
        self.postVM?.getPosts()
        self.postVM?.postBR.skip(1).subscribe(onNext: { (post) in
            self.post = post
            self.collectionView.reloadData()
        }, onError: { (error) in
            print(error.localizedDescription)
        }).disposed(by:self.disposeBag)
        
    }
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return post.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCell.identifier, for: indexPath) as! PostCell
    
        let post = self.post[indexPath.row]
        
        cell.title.font = UIFont(descriptor: UIFontDescriptor.init(name: "Semibold", size: 20), size: 20)
        cell.title.numberOfLines = 0
        cell.title.textAlignment = NSTextAlignment.center
        
        cell.title.text = post.title
        cell.body.text = post.body
    
        return cell
    }

}


extension PostCVC:UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 8)
    }
}
