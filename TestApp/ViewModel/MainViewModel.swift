//
//  MainViewModel.swift
//  TestApp
//
//  Created by mukul Sharma on 02/09/22.
//

import Foundation
import UIKit
protocol MainViewModelDelegate {
    func didReceiveLoginResponse(MainModel: [MainModel]?)
}
class MainViewModel
{
    var delegate : MainViewModelDelegate?

    func loginUser()
    {
            //use mainResource to call main API
            let loginResource = MainResource()
        loginResource.MainResource(MainResourceRequest: nil) { (mainApiResponse) in
                //return the response we get from mainResource
                DispatchQueue.main.async {
                    self.delegate?.didReceiveLoginResponse(MainModel: mainApiResponse)
                }
            }
    }

}
