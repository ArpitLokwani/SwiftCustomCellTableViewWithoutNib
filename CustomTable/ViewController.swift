//
//  ViewController.swift
//  CustomTable
//
//  Created by Arpit Lokwani on 5/18/16.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView  =   UITableView()
    
    var items: [String] = ["Cell 1", "Cell 2", "Cell 3","Cell 4", "Cell 5", "Cell 6","Cell 7", "Cell 8", "Cell 9"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame         =   CGRectMake(0, 10, self.view.frame.width, self.view.frame.height);
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
        
        // ******* This is for custom cell with nib

        
//        let identifier = "ALCustomCell"
//        
//        var cell: UITableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) 
//        
//        if cell == nil {
//            tableView.registerNib(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
//            cell = tableView.dequeueReusableCellWithIdentifier(identifier) 
//        }
//        
//        return cell
      //  let identifier = "CustomCell"
        
        
        // ******* This is for custom cell programatically
        
        var cell : CustomCell!
        if cell == nil {
            cell = CustomCell(style: UITableViewCellStyle.Default, reuseIdentifier: NSStringFromClass(CustomCell))

        }
        cell.testLabel?.text = items[indexPath.row]
        
        
        // If extra cell customization is needed do so here
        return cell;
        
       
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}

