//
//  EmployeesTableViewController.swift
//  Navigatron
//
//  Created by Timothy Gourley on 4/2/19.
//  Copyright © 2019 Timothy Gourley. All rights reserved.
//

import UIKit

class EmployeesTableViewController: UITableViewController {

    let employees = ["Patient #1", "Patient #2", "Patient #3"]

    var selectedEmployee: String? {
        didSet {
            performSegue(withIdentifier: "GoToPatient", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeCell", for: indexPath)

        cell.textLabel?.textColor = UIColor.black
        cell.textLabel?.text = employees[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedEmployee = employees[indexPath.row]
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToPatient" {
            let employeeViewController = segue.destination as! EmployeeViewController
            employeeViewController.selectedEmployee = selectedEmployee ?? "Unknown Employee"
        }
    }
}

