//
//  PersonController.swift
//  Say Their Names
//
//  Created by Ahmad Karkouti on 30/05/2020.
//  Copyright © 2020 Franck-Stephane Ndame Mpouli. All rights reserved.
//

import UIKit

class PersonController: BaseViewController {

//    private let personView = PersonView()

    var tableView: UITableView = {
        let view = UITableView(frame: .zero)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBarItems()
        
        view.accessibilityIdentifier = "personView"
        tableView.frame = self.view.bounds
        self.view = tableView
    }
    
    private func setupNavigationBarItems() {
        let dismissButton = UIButton(type: .system)
        dismissButton.setImage(UIImage(named: "Close Icon")?.withRenderingMode(.alwaysOriginal), for: .normal)
        dismissButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: dismissButton)
        
        let shareButton = UIButton(type: .system)
        shareButton.setImage(UIImage(named: "share_white")?.withRenderingMode(.alwaysOriginal), for: .normal)
        shareButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: shareButton)
        
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = .black
    }
    
    
//    @IBAction func didPressCloseButton() {
//        self.dismiss(animated: true, completion: nil)
//    }
//
//    @IBAction func didPressReadButton(_ sender: Any) {
//        let personDetailsController = PersonDetailsController(service: self.service)
//        personDetailsController.isModalInPresentation = true
//        navigationController?.pushViewController(personDetailsController, animated: true)
//      }
    
}
