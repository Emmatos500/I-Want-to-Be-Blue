//
//  ViewController.swift
//  I Want to Be Blue
//
//  Created by Emmett Kennedy on 7/19/21.
//

import UIKit

class ViewController: UIViewController {

    var whichFunction = true
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        if(whichFunction){
            view.backgroundColor = .blue
            label1.text = "It's not easy being green."
            label1.textColor = .green
            whichFunction = !whichFunction
        }
        else{
            view.backgroundColor = .white
            label1.text = "What Color Am I?"
            label1.textColor = .black
            whichFunction = !whichFunction
        }
    }
    
    func randomColor(){
        var randomNumber = Int.random(in: 0...3)
        switch randomNumber {
        case 0:
            view.backgroundColor = .red
        case 1:
            view.backgroundColor = .green
        case 2:
            view.backgroundColor = .blue
        default:
            view.backgroundColor = .yellow
        }
    }
    @IBAction func buttonPressed1(_ sender: Any) {
        randomColor()
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomColor()
    }
}

