//
//  CustomExerciseCell.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 27/11/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit

class CustomExerciseCell: UITableViewCell {

  
    @IBOutlet weak var CustomExLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
