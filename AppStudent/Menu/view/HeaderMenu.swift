//
//  HeaderTableViewCell.swift
//  AppStudent
//
//  Created by Apple on 3/5/21.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    let imageAvata: UIImageView = {
        let avavta = UIImageView()
        avavta.layer.cornerRadius = 60
        avavta.layer.masksToBounds = true
        avavta.translatesAutoresizingMaskIntoConstraints = false
        return avavta

    }()
    
    let name: UILabel = {
        let name = UILabel()
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    let time: UILabel = {
        let time = UILabel()
        time.textColor = .black
        time.translatesAutoresizingMaskIntoConstraints = false
        return time
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
        self.addSubview(imageAvata)
        self.addSubview(name)
        self.addSubview(time)
        NSLayoutConstraint.activate([
            imageAvata.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            imageAvata.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            imageAvata.heightAnchor.constraint(equalToConstant: 120),
            imageAvata.widthAnchor.constraint(equalToConstant: 120)
        ])
        NSLayoutConstraint.activate([
            name.bottomAnchor.constraint(equalTo: time.topAnchor, constant:-70),
            name.leadingAnchor.constraint(equalTo: imageAvata.trailingAnchor, constant: 30)
        ])
        NSLayoutConstraint.activate([
            time.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            time.leadingAnchor.constraint(equalTo: imageAvata.trailingAnchor, constant: 30)
        ])
    }

}
