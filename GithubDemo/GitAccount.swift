//
//  GitAccount.swift
//  GithubDemo
//
//  Created by Satyam Jaiswal on 2/10/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class GitAccount: UITableViewCell {

    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var forksImageView: UIImageView!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var githubRepo: GithubRepo! {
        didSet {
            avatarImageView.setImageWithURL(NSURL(string: githubRepo.ownerAvatarURL!)!)
            nameLabel.text = githubRepo.name
            ownerLabel.text = githubRepo.ownerHandle
            forksLabel.text = "\(githubRepo.forks!)"
            starsLabel.text = "\(githubRepo.stars!)"
        }
    }
    @IBOutlet weak var starsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        avatarImageView.layer.cornerRadius = 4
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
