//
//  ResourcesVC.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/8/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit

class ResourcesVC: UIViewController {

    let posts:UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Posts", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.layer.masksToBounds = true
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handlePostsButton), for: .touchUpInside)
        return button
    }()
    
    let comments:UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Comments", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.layer.masksToBounds = true
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleCommentsButton), for: .touchUpInside)
        return button
    }()
    
    let albums:UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Albums", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.layer.masksToBounds = true
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAlbumsButton), for: .touchUpInside)
        return button
    }()
    
    let photos:UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Photos", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.layer.masksToBounds = true
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handlePhotosButton), for: .touchUpInside)
        return button
    }()
    
    let todos:UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Todos", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.layer.masksToBounds = true
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleTodosButton), for: .touchUpInside)
        return button
    }()
    
    let users:UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Users", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.layer.masksToBounds = true
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleUsersButton), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "JSONPlaceholder"
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 50/255, green: 90/255, blue: 149/255, alpha: 1)
        self.view.backgroundColor = .white
        
        setupAllComponents()
        
    }
    
    

    
//    actionFunctions
    @objc func handlePostsButton(){
        let flowLayout = UICollectionViewFlowLayout()
        let postCVC = PostCVC(collectionViewLayout: flowLayout)
        self.navigationController?.pushViewController(postCVC, animated: true)
    }
    
    @objc func handleCommentsButton(){
        
    }
    
    @objc func handleAlbumsButton(){
        
    }
    
    @objc func handlePhotosButton(){
        let flowLayout = UICollectionViewFlowLayout()
        let photoVC = PhotoCVC(collectionViewLayout: flowLayout)
        self.navigationController?.pushViewController(photoVC, animated: true)

    }
    
    @objc func handleTodosButton(){
        
    }
    
    @objc func handleUsersButton(){
        
    }

    
    

}
