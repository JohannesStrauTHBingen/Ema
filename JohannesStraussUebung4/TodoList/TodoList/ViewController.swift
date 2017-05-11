//
//  ViewController.swift
//  TodoListe
//
//  Created by Student on 11.05.17.
//  Copyright © 2017 Student. All rights reserved.
//a

import UIKit

extension ViewController : UITableViewDataSource, UITableViewDelegate{}

class ViewController: UIViewController {
    
    
    
    var todos:[Todo] = [Todo]()
    var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navBarBtn = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addItem))
        navigationItem.leftBarButtonItem = navBarBtn
        //navbar.pushItem(navigationItem, animated: sfalse)
        
        table = UITableView(frame: view.bounds )
        view.addSubview(table)
        
        table.dataSource = self
        table.delegate = self
        
        navigationItem.title = "TodoList"
        print("DidLoadDone")
    }
    
    func addItem(){
        let alert = UIAlertController(title: "New Todo", message: "Enter a name for your new Todo", preferredStyle: .alert)
        
        alert.addTextField{(textField) in
            textField.placeholder = "Title"
            textField.textAlignment = .center
        }
        
        alert.addTextField{(textField) in
            textField.placeholder = "Notes"
            textField.textAlignment = .center
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {[weak alert](_) in
            
            let inputT = ((alert?.textFields![0])?.text)
            let inputN = ((alert?.textFields![1])?.text)
            
            if (inputT != ""){
                self.todos.append(Todo(title: inputT!, notes: inputN!))
                
                DispatchQueue.main.async {
                    self.table.reloadData()
                }
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = todos[indexPath.row]
        
        let cellId = "ElementCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) ?? UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
        cell.textLabel?.text = todo.title
        cell.detailTextLabel?.text = todo.notes
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete{
            self.todos.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
}

struct Todo {
    
    var title: String
    var notes: String
}

