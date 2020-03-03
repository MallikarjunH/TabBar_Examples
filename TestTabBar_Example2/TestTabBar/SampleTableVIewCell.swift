//
//  SampleTableVIewCell.swift
//  TestTabBar
//
//  Created by ADDA on 05/02/20.
//  Copyright © 2020 ADDA. All rights reserved.
//

import UIKit

class SampleTableVIewCell: UITableViewCell {

    @IBOutlet weak var sampleLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
