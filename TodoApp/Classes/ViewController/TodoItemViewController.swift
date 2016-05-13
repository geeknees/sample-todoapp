//
//  TodoItemViewController.swift
//  TodoApp
//
//  Created by masumi on 2016/05/12.
//  Copyright © 2016年 nendworks. All rights reserved.
//

import UIKit
import CoreData

class TodoItemViewController: UIViewController {
    
    @IBOutlet weak var todoField: UITextField!
    @IBOutlet weak var todoBody: UITextField!
    var task: Todo? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        if let taskTodo = task {
            todoField.text = taskTodo.item
            todoBody.text = taskTodo.body        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var cancel: UIBarButtonItem!
    @IBOutlet weak var save: UIBarButtonItem!
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        print("cancel")
        navigationController!.popViewControllerAnimated(true)
    }
    
    
    @IBAction func save(sender: UIBarButtonItem) {
        if task != nil {
            editTask()
        } else {
            createTask()
        }
        navigationController!.popViewControllerAnimated(true)
    }
    
    func createTask() {
        let newTask: Todo = Todo.MR_createEntity()! as Todo
        newTask.item = todoField.text
        newTask.body = todoBody.text
        newTask.managedObjectContext!.MR_saveToPersistentStoreAndWait()
    }
    
    func editTask() {
        task?.item = todoField.text
        task?.body = todoBody.text
        task?.managedObjectContext!.MR_saveToPersistentStoreAndWait()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
