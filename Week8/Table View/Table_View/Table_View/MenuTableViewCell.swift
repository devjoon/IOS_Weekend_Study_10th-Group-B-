//
//  MenuTableViewCell.swift
//  Table_View
//
//  Created by uemu on 2023/11/04.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var menuLable: UILabel!
    @IBOutlet weak var circleImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
