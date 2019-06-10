////
////  ViewController.swift
////  emojional
////
////  Created by Apple on 6/7/19.
////  Copyright © 2019 Apple. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    //    override func viewDidLoad() {
//    //        super.viewDidLoad()
//    //        // Do any additional setup after loading the view.
//
//    let emojis = ["🤯": "overwhelmed", "😞": "sad", "🤬": "cursing", "🥳": "party"]
//
//    @IBAction func showMessage(sender: UIButton) {
//        let customMessages;  ["overwhelmed": ["Time for some Yoga with Karlie and Adrienne!", "Do some mountain poses", "Deep breath in, deep breath out"], "sad": ["Turn that frown upside down!", "Cheer up buttercup!", "It's OK, life will get better"], "cursing": ["would an entice button make you feel better?"], "party": ["WOOHOO!", "Keep it up!"]]
//        let selectedEmotion = sender.titleLabel?.text
//        var alertController = UIAlertController(title: "Hey", message: selectedEmotion, preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//        present(alertController, animated: true, completion: nil)
//    }
//
//}
//

//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 6/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //        // Do any additional setup after loading the view.
    //    }
    
    let emojis = ["😞": "sad?", "🥳": "Happy!", "🤯": "overwhelmed", "🤬": "ANGRY"]
    let customMessages = ["sad?": ["cheer up buttercup", "take a deep breath", "I believe in you"], "Happy!": ["yay!", "glad to hear it!", "keep it up!"], "overwhelmed": ["Take a breath", "Do some yoga", "You've got this"], "ANGRY": ["oh no!", "Remember to breathe", "Take a break"]]
    
    @IBAction func showMessage(sender: UIButton){
        let selectedEmotion = sender.titleLabel?.text
        let number = Int.random(in: 0...2)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        
        //on click - an alert shows up displaying a random message customized to each emoji
        var alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
    
}
