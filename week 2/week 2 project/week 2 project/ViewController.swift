//
//  ViewController.swift
//  week 2 project
//
//  Created by Rowan Su on 2024/6/24.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    @IBOutlet weak var changeText: UILabel!
    @IBAction func changeTextBackground(_ sender: Any) {
        update()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func update() {
        let randomInt = Int.random(in: 0...6)
        changeText.text = text[randomInt]
        switch randomInt {
        case 0:
            view.backgroundColor = .red
        case 1:
            view.backgroundColor = .orange
        case 2:
            view.backgroundColor = .systemPink
        case 3:
            view.backgroundColor = .brown
        case 4:
            view.backgroundColor = .blue
        case 5:
            view.backgroundColor = .purple
        case 6:
            view.backgroundColor = .darkGray
        default:
            break
        }
    }

}

