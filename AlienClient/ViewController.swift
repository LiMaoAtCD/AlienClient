//
//  ViewController.swift
//  AlienClient
//
//  Created by AlienLi on 14/12/9.
//  Copyright (c) 2014年 ALN. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
//        Alamofire.request(.GET, "http://192.168.2.132:3000", parameters: ["act":"login","name":"alien","pwd":"1234567"], encoding: .URL).responseJSON { (request, response, json, error) -> Void in
//            println("login result: \(json)")
//        }
//        Alamofire.request(.GET, "http://192.168.2.132:3000", parameters: ["act":"query","name":"alien","pwd":"1234567"], encoding: .URL).responseString { (req, res, string, error) -> Void in
//            println("query result:\(string)")
//            if let err = error {
//                println(err)
//            }
//        }.responseJSON { (request, response, JSON, error) -> Void in
//            println()
//        }
        
        
        Alamofire.request(.POST, "http://192.168.2.132:3000", parameters: ["act":"register","username":"Alien","pwd":"123456"], encoding: .URL).responseJSON { (request, response, json, error) -> Void in
            if let data:AnyObject = json {
                println(data)
            }else {
                println("nil")
            }
        }
    

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

