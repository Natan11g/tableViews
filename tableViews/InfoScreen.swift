//
//  InfoScreen.swift
//  tableViews
//
//  Created by Natan Gluszko on 30/06/2022.
//

import UIKit

class InfoScreen: UIViewController {

    @IBOutlet weak var dogImage: UIImageView!

    
    @IBOutlet weak var dogNameLabel: UILabel!
    
    
    var selectedDogName = ""
    var selectedDogImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       dogNameLabel.text = selectedDogName
        dogImage.image = selectedDogImage

     
    }
    


}
