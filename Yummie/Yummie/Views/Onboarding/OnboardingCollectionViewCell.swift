//
//  OnboardingCollectionViewCell.swift
//  Yummie
//
//  Created by Syed Fasiullah Hussaini on 09/03/24.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    @IBOutlet weak var slideImageView: UIImageView!
    
    
    func setUp(_ slide: OnboardingSlide) {
        
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
        
    }
    
}
