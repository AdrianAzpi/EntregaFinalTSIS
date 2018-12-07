//
//  ServiceToApiAWS.swift
//  CatGameTSIS2019-1
//
//  Created by Adrian on 12/3/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import Foundation
import Alamofire

class ServiceToApiAWS {
    
    func makingARequest(){
        Alamofire.request("https://57272q9fsh.execute-api.us-east-1.amazonaws.com/Deploy/randomnumber/realrandomnumber").responseJSON { response in
            print("Requested \(String(describing: response.request))")
            
            //            if let json = response.result.value {
            //                print("JSON \(json)")  //respuesta de json
            //            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data:  \(utf8Text) ")
                
                //self.textTosave = utf8Text
                
            }
            
        }
        
    }
    
    
    }
    
   

