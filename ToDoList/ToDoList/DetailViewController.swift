//
//  DetailViewController.swift
//  ToDoList
//
//  Created by rushabh on 20/02/17.
//  Copyright © 2017 CentennialCollege. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

           }

    @IBAction func btnAddTask(_ sender: Any) {
        
       let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        // let task = Task(context : context)
        
        
    }
    
    }
