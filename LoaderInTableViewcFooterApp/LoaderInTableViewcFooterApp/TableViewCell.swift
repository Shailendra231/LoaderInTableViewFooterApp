//
//  TableViewCell.swift
//  LoaderInTableViewcFooterApp
//
//  Created by Shailendra Kumar Ram on 2/21/20.
//  Copyright © 2020 Nitin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var table: UIActivityIndicatorView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
