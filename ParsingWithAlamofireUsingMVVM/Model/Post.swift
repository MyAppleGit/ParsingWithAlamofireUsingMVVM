//
//  Post.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/9/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit
import ObjectMapper

class Post: NSObject,Mappable {
    
    var userID:String = ""
    var id:String = ""
    var title:String = ""
    var body:String = ""
    
    required init?(map: Map) {
        super.init()
    }
    
    func mapping(map: Map) {
        
        userID <- map["userID"]
        id <- map["id"]
        title <- map["title"]
        body <- map["body"]
        
    }
    

    
}
