//
//  ArtistTableViewCell.swift
//  FestivalNieuwpoort
//
//  Created by mobapp01 on 29/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var artistLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var stageLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
