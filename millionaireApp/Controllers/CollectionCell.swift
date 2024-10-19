//
//  CollectionCell.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 18.10.24.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var bgView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        myLabel.textAlignment = .center
        
        bgView.backgroundColor = .white
        bgView.layer.cornerRadius = 20
        
        

    }

}
