//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Thomas Houghton on 10/06/2017.
//  Copyright © 2017 Tom. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importanceSwitch: UISwitch!
    
    var perviousVC = TasksViewController();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTask(_ sender: Any) {
        // Create a Task from the outlet information.
        let task = Task();
        task.name = taskNameTextField.text!;
        task.important = importanceSwitch.isOn;
        
        // Add new task to array in previes view controller.
        perviousVC.tasks.append(task);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
