//
//  PostRepository.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/9/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit
import RxSwift

class PostRepository: NSObject {

    func getPost() -> Observable<[Post]> {
        return Observable.create({ (observer) -> Disposable in
            ApiClient.instance.getPosts(onCompletion: { (posts) in
                observer.onNext(posts)
                observer.onCompleted()
            }, onError: { (error) in
                observer.onError(NSError.init(coder: NSCoder.init())!)
            })
            
            return Disposables.create()
        })
    }
}
