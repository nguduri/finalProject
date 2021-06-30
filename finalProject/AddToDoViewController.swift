//
//  AddToDoViewController.swift
//  toDoList
//
//  Created by Nithya Guduri on 6/29/21.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var addTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addTapped.layer.cornerRadius = 6
    }
    
    @IBAction func addTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
        
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
