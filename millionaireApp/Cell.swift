//
//  Cell.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 01.10.24.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var cellLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
