//
//  ViewController.swift
//  CustomTable
//
//  Created by Arpit Lokwani on 5/18/16.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView  =   UITableView()
    
    var items: [String] = ["Demo1", "Demo2", "Demo3","Demo4", "Demo5", "Demo6","Demo7", "Demo8", "Demo9"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame         =   CGRectMake(0, 50, self.view.frame.width, self.view.frame.height);
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.backgroundColor = UIColor .whiteColor();
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.view.addSubview(tableView)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier = "ALCustomCell"
        
        var cell: UITableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) 
        
        if cell == nil {
            tableView.registerNib(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCellWithIdentifier(identifier) 
        }
        
        return cell

       
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}

