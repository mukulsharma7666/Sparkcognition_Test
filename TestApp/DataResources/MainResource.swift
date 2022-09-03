//
//  MainResource.swift
//  TestApp
//
//  Created by mukul Sharma on 02/09/22.
//

import Foundation

struct MainResource
{
    func MainResource(MainResourceRequest: [String:Any]?, completion : @escaping (_ result: [MainModel]?) -> Void)
    {
        let loginUrl = URL(string: ApiEndpoints.main)!
        let httpUtility = HttpUtility()
        
        httpUtility.getApiData(requestUrl: loginUrl, resultType: [MainModel].self) { result in
            _ = completion(result)
        }
    }
}
