//
//  CustomCell.swift
//  CustomTable
//
//  Created by Arpit Lokwani on 5/18/16.


import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet var testLabel : UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {

        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        // here create your stuff programatically 
        
        testLabel = UILabel(frame: CGRectMake(20, 10, 200, 21))
        testLabel!.textAlignment = NSTextAlignment.Left
        self.addSubview(testLabel!)
        
        
 
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}