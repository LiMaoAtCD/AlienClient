//
//  ALNNetworkHandler.swift
//  AlienClient
//
//  Created by AlienLi on 14/12/16.
//  Copyright (c) 2014年 ALN. All rights reserved.
//

import UIKit
import Alamofire
class ALNNetworkHandler: NSObject {
    
    class func request(string: String, params: [String:AnyObject]?, WithCompletion completionHandler:((NSURLRequest, NSHTTPURLResponse?, AnyObject?, NSError?) -> Void)){
        if string == "GET" {
            Alamofire.request(.GET, "http://192.168.2.132:3000", parameters: params, encoding: .URL).responseJSON(completionHandler:completionHandler)
        } else if string == "POST" {
            Alamofire.request(.POST,  "http://192.168.2.132:3000", parameters: params, encoding: .URL).responseJSON(completionHandler:completionHandler)
        } else {
            println("HTTP Method Error")
        }
    }
   
}
