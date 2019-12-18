//
//  AllExercisesCell.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 04/12/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
// profuct id in purchase : com.ahmer.gymApp.premiumExercise

import UIKit

class AllExercisesCell: UITableViewCell {

    @IBOutlet weak var exerciseNameLabel: UILabel!
    @IBOutlet weak var exerciseImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
