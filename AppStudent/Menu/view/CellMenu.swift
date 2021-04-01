//
//  CellHome.swift
//  AppStudent
//
//  Created by Apple on 3/3/21.
//

import UIKit

class CellMenu: UITableViewCell {
    
    let imaneThumnail: UIImageView = {
        let im = UIImageView()
        im.layer.cornerRadius = 15
        im.layer.masksToBounds = true
        im.translatesAutoresizingMaskIntoConstraints = false
        return im
    }()

    
    
    let information: UILabel = {
        let information = UILabel()
        information.textColor = .black
        information.translatesAutoresizingMaskIntoConstraints = false
        return information
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setup()
        // Configure the view for the selected state
    }
    
    func setup(){
        self.addSubview(imaneThumnail)
        self.addSubview(information)
        
        NSLayoutConstraint.activate([
            imaneThumnail.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imaneThumnail.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            imaneThumnail.heightAnchor.constraint(equalToConstant: 30),
            imaneThumnail.widthAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            information.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            information.leadingAnchor.constraint(equalTo: imaneThumnail.trailingAnchor, constant: 50)
        ])
    }
    

}
