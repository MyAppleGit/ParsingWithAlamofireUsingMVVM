//
//  PostViewModel.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/9/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class PostViewModel: NSObject {
    
    let dispose = DisposeBag()
    let postBR = BehaviorRelay<[Post]>(value: [])
    let errorBR =  BehaviorRelay<Error>(value: NSError.init(domain: "", code: 0, userInfo: nil))
    
    let repository = PostRepository()
    
    func getPosts(){
        repository.getPost()
            .subscribe(onNext: { (posts) in
                self.postBR.accept(posts)
            }, onError: { (error) in
                self.errorBR.accept(error)
            }).disposed(by: self.dispose)
    }
    
}
