//
//  CompleteToDoViewController.swift
//  ToDoList2
//
//  Created by Morgan Rivera on 6/30/21.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var previousVC = ToDoTableViewController()
    var selectedToDo : ToDo1?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedToDo?.name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
          if let theToDo = selectedToDo {
            context.delete(theToDo)
            navigationController?.popViewController(animated: true)
          }
        }
    }
    
    /*
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
