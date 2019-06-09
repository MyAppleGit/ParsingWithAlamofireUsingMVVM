//
//  PhotoViewModel.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/8/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class PhotoVM: NSObject {
    let dispose = DisposeBag()
    let photoBR = BehaviorRelay<[Photo]>(value: [])
    let errorBR = BehaviorRelay<Error>(value: NSError.init(domain: "", code: 0, userInfo: nil))
    
    let repository = PhotoRepository()
    
    func getPhotos(){
        repository.getPhotos()
            .subscribe(onNext: { (photos) in
                self.photoBR.accept(photos)
            }, onError: { (errore) in
                self.errorBR.accept(errore)
            }).disposed(by: self.dispose)
    }
}
