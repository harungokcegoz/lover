//
//  MissCalculateHandler.swift
//  how-much-did-u-miss-me
//
//  Created by Harun Gökçegöz on 15/03/2023.
//

import Foundation
import UIKit

class EmojiHandler: UIImageView {
    let emojiImages = [
        "emoji0", "emoji1", "emoji2", "emoji3", "emoji4", "emoji5", "emoji6", "emoji7", "emoji8", "emoji9"
    ]
    
    var randomNumber = 3
    
    func getRandomNumber() -> Int {
        randomNumber = Int.random(in: 0...9)
        return randomNumber
    }

    func updateImage(with index: Int) {
        if index >= 0 && index < emojiImages.count {
            self.image = UIImage(named: emojiImages[index])
        }
    }
    

}
