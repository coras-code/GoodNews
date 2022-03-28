//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by M_931521 on 06/03/2022.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() { //private so that it can only be called in this class
//        self.navigationController?.navigationBar.prefersLargeTitles = true //bar tint doesnt work with large titles - xcode bug

        Webservice().fetchArticles(completion: { _ in})
    }
    
}
