//
//  Photo.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/8/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import Foundation
import ObjectMapper

class Photo:NSObject,Mappable{
    
    var albumId:String = ""
    var id:String = ""
    var title:String = ""
    var url:String = ""
    var thumbnailUrl:String = ""
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        albumId <- map["albumId"]
        id <- map["id"]
        title <- map["title"]
        url <- map["url"]
        thumbnailUrl <- map["thumbnailUrl  "]
    }
    
    
}
