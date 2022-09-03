//
//  MainVC.swift
//  TestApp
//
//  Created by mukul Sharma on 02/09/22.
//

import UIKit

class MainVC: UIViewController, MainViewModelDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    private var mainViewModel = MainViewModel()
    var maindatamodelobject  =  [MainModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewwillsetup()
        // Do any additional setup after loading the view.
    }
    
    // setup view
    private func viewwillsetup()
    {
        mainViewModel.delegate = self
        mainViewModel.loginUser()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func didReceiveLoginResponse(MainModel: [MainModel]?) {
        guard let setupdata = MainModel else { return }
        maindatamodelobject = setupdata
        tableView.reloadData()
    }
    
}

// setup data of tableview
extension MainVC: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.maindatamodelobject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let maincell = tableView.dequeueReusableCell(withIdentifier: "MainTableCell", for: indexPath) as! MainTableCell
        maincell.managedataofcell(datatoset: self.maindatamodelobject[indexPath.row])
        return maincell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100 
    }
}
