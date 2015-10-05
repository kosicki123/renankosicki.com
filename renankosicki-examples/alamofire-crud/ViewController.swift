//
//  ViewController.swift
//  alamofire-crud
//
//  Created by Renan Kosicki on 10/5/15.
//  Copyright © 2015 Renan Kosicki | K-Mobi. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        create()
        read()
        update()
        delete()
    }
    
    func create() {
        Alamofire.request(.POST, "http://httpbin.org/post", parameters: ["foo": "bar"])
            .responseJSON { response in
                print("CREATE RESPONSE: \(response)\n")
        }
    }
    
    func read() {
        Alamofire.request(.GET, "http://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print("READ RESPONSE: \(response)\n")
        }
    }
    
    func update() {
        Alamofire.request(.PUT, "http://httpbin.org/put", parameters: ["foo": "bar"])
            .responseJSON { response in
                print("UPDATE RESPONSE: \(response)\n")
        }
    }
    
    func delete() {
        Alamofire.request(.DELETE, "http://httpbin.org/delete", parameters: ["foo": "bar"])
            .responseJSON { response in
                print("DELETE RESPONSE: \(response)\n")
        }
    }
}

