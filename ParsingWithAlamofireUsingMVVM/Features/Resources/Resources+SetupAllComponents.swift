//
//  Resources+Extentions.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/8/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import Foundation

extension ResourcesVC{
    
    func setupAllComponents(){
        setupPostsButton()
        setupCommentsButton()
        setupAlbumsButton()
        setupPhotosButton()
        setupTodosButton()
        setupUsersButton()
    }
    
    //    setups functions
    func setupPostsButton(){
        view.addSubview(posts)
        
        posts.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        posts.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -32).isActive = true
        posts.heightAnchor.constraint(equalToConstant: 44).isActive = true
        posts.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor,constant:view.frame.height/12).isActive = true
        posts.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        posts.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
    }
    
    func setupCommentsButton(){
        view.addSubview(comments)
        
        comments.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        comments.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -32).isActive = true
        comments.heightAnchor.constraint(equalToConstant: 44).isActive = true
        comments.topAnchor.constraint(equalTo: posts.bottomAnchor,constant: view.frame.height/12).isActive = true
        comments.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        comments.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
    }
    
    func setupAlbumsButton(){
        view.addSubview(albums)
        
        albums.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        albums.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -32).isActive = true
        albums.heightAnchor.constraint(equalToConstant: 44).isActive = true
        albums.topAnchor.constraint(equalTo: comments.bottomAnchor,constant: view.frame.height/12).isActive = true
        albums.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        albums.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
    }
    
    func setupPhotosButton(){
        view.addSubview(photos)
        
        photos.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photos.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -32).isActive = true
        photos.heightAnchor.constraint(equalToConstant: 44).isActive = true
        photos.topAnchor.constraint(equalTo: albums.bottomAnchor,constant: view.frame.height/12).isActive = true
        photos.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        photos.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
    }
    
    func setupTodosButton(){
        view.addSubview(todos)
        
        todos.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        todos.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -32).isActive = true
        todos.heightAnchor.constraint(equalToConstant: 44).isActive = true
        todos.topAnchor.constraint(equalTo: photos.bottomAnchor,constant: view.frame.height/12).isActive = true
        todos.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        todos.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
    }
    
    func setupUsersButton(){
        view.addSubview(users)
        
        users.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        users.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -32).isActive = true
        users.heightAnchor.constraint(equalToConstant: 44).isActive = true
        users.topAnchor.constraint(equalTo: todos.bottomAnchor,constant: view.frame.height/12).isActive = true
        users.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        users.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
    }
    
}
