//
//  PlayerCell.swift
//  MVVM-C
//
//  Created by Abdurrahman Alboghdady on 08/04/2022.
//

import UIKit
import Nuke

class PlayerCell: UITableViewCell {
    
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!

    private var player: Player?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(player: Player) {
        self.player = player
        
        nameLabel.text = player.name
        teamLabel.text = player.team_name
        positionLabel.text = player.position_name
        ratingLabel.text = player.rating
        // HINT: - no images found in the competitions api service
        // so i commented the loading code
        guard let url = URL(string: player.photo ?? "") else { return }
        Nuke.loadImage(with: url, into: playerImageView)
    }
}
