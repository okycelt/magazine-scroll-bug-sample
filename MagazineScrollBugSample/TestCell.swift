//
//  TestCell.swift
//  MagazineScrollBugSample
//
//  Created by Ondřej Kycelt on 12/02/2020.
//  Copyright © 2020 Ondřej Kycelt. All rights reserved.
//

import MagazineLayout
import UIKit

class TestCell: MagazineLayoutCollectionViewCell {
    
    var titleLabel: UILabel!
    var subtitleLabel: UILabel!
    
    //
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepare()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //
    
    private func prepare() {
        //
        backgroundColor = .lightGray
        
        // Title label
        titleLabel = UILabel()
        titleLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        titleLabel.font = .preferredFont(forTextStyle: .headline)
        
        // Subtitle label
        subtitleLabel = UILabel()
        subtitleLabel.font = .preferredFont(forTextStyle: .subheadline)
        
        // Stack view
        let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(stackView)
        
        // Constraint
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8).isActive = true
        stackView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        stackView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
    }
    
}
