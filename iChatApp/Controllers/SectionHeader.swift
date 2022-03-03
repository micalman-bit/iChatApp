//
//  SectionHeader.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 03.03.2022.
//

import UIKit

class SectionHeader: UICollectionReusableView {

    static let reuseId = "SectionHeader"

    let title = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        title.translatesAutoresizingMaskIntoConstraints = false
        addSubview(title)

        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: self.topAnchor),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            title.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            title.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    func configure(text: String, font: UIFont? , color: UIColor) {
        title.textColor = color
        title.font = font
        title.text = text
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
