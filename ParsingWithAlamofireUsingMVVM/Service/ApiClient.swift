//
//  ApiClient.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/8/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit
import RxSwift
import Alamofire
import ObjectMapper

class ApiClient: NSObject {
    static let instance = ApiClient()
    
    //    getPhotos
    func getPhotos(onCompletion:@escaping(([Photo]) -> Void), onError:@escaping((String?) -> Void)){
        Alamofire.request(Constant.photos, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: ["Authorization":""]).responseJSON { (response) in
            if let jsonArray = response.result.value as? [[String:Any]]{
                let arrayOfPhoto = Mapper<Photo>().mapArray(JSONArray: jsonArray)
                onCompletion(arrayOfPhoto)
            }else if let jsonDict = response.result.value as? [String:Any]{
                let dictOfPhoto = Mapper<Photo>().mapArray(JSONObject: jsonDict)
                onCompletion(dictOfPhoto!)
            }else if let error = response.error{
                print(error.localizedDescription)
            }
        }
    }
    
    
    //    getPhotos
    func getPosts(onCompletion:@escaping(([Post]) -> Void), onError:@escaping((String?) -> Void)){
        Alamofire.request(Constant.posts, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: ["Authorization":""]).responseJSON { (response) in
            if let jsonArray = response.result.value as? [[String:Any]]{
                let arrayOfPosts = Mapper<Post>().mapArray(JSONArray: jsonArray)
                onCompletion(arrayOfPosts)
            }else if let jsonDict = response.result.value as? [String:Any]{
                let dictOfPosts = Mapper<Post>().mapArray(JSONObject: jsonDict)
                onCompletion(dictOfPosts!)
            }else if let error = response.error{
                print(error.localizedDescription)
            }
        }
    }
    
    
    
    
}
