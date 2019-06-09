//
//  PhotoRepository.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/8/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit
import RxSwift

class PhotoRepository: NSObject {
    
    func getPhotos() -> Observable<[Photo]>{
        return Observable.create({ (observer) -> Disposable in
            ApiClient.instance.getPhotos(onCompletion: { (photos) in
                observer.onNext(photos)
                observer.onCompleted()
            }, onError: { (error) in
                observer.onError(NSError(domain: "", code:500, userInfo: ["error" : error!]))
            })
            return Disposables.create()
        })
        
    }
}
