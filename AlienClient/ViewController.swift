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
   
        Alamofire.request(.GET, "http://192.168.2.132:3000", parameters: ["act":"login","name":"alienli","pwd":"123456"], encoding: .URL)
            .responseString { (Request, NSURLResponse, String, error) -> Void in
            println(String)
        }.responseJSON { (request, response, json, error) -> Void in
            if let data: AnyObject = json {
                println(data)
                
            } else {
                println("nil")
            }
        }
        
        Alamofire.request(.POST, "http://192.168.2.132:3000", parameters: ["act":"login","name":"Alien","pwd":"123456"], encoding: .URL).responseJSON { (request, response, json, error) -> Void in
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

