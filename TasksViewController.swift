//
//  TasksViewController.swift
//  DoIt
//
//  Created by Thomas Houghton on 10/06/2017.
//  Copyright © 2017 Tom. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks:[Task] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks();
        
        tableView.dataSource = self;
        tableView.delegate = self;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        cell.textLabel?.text = "hello";
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task.name
        
        if task.important {
            cell.textLabel?.text = "Important: \(task.name)"
        }else{
           cell.textLabel?.text = task.name;
        }
        
        return cell;
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task();
        task1.name = "Do revision";
        task1.important = true;
        
        let task2 = Task();
        task2.name = "Tidy Room";
        task2.important = false;
        
        let task3 = Task();
        task3.name = "Do coursework";
        task3.important = false;
        
        return [task1, task2, task3];
    }

    @IBAction func plusBtn(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! CreateTaskViewController;
        nextVC.perviousVC = self;
    }
    
}

