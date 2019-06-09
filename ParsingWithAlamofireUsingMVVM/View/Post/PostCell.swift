//
//  PostCell.swift
//  ParsingWithAlamofireUsingMVVM
//
//  Created by Avazbek Kodiraliev on 6/9/19.
//  Copyright © 2019 Avazbek Kodiraliev. All rights reserved.
//

import UIKit

class PostCell: UICollectionViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    class var identifier:  String{
        return String(describing: self)
    }

    class var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
