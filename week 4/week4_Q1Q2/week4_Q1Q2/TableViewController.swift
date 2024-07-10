//
//  ViewController.swift
//  week4_Q1Q2
//
//  Created by Rowan Su on 2024/7/8.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 10
        } else {
            return 5
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
        return cell
    }
}

/*
 When we manually call reloadData() of a table view, the system will call:
 1. numberOfSections(in:): determines the number of sections
 2. tableView(_:numberOfRowsInSection:): determines the number of rows
 3. tableView(_:cellForRowAt:): creates each cell.
*/
