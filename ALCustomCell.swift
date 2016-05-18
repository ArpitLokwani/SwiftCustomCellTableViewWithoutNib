//
//  ALCustomCell.swift
//  CustomTable
//
//  Created by Arpit Lokwani on 5/18/16.
//  Copyright © 2016 Embitel. All rights reserved.
//

import UIKit

class ALCustomCell: UITableViewCell {

    @IBOutlet weak var ALCustomLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
//        // Initialization code
//        let label = UILabel(frame: CGRectMake(0, 0, 200, 21))
//        label.center = CGPointMake(160, 284)
//        label.textAlignment = NSTextAlignment.Center
//        label.text = "I'am a test label"
//        self.addSubview(label)
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
