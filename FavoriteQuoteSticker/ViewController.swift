//
//  ViewController.swift
//  Homeowork_3
//
//  Created by Chinonso Obidike on 1/1/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var uiText: UITextField!
    @IBOutlet weak var uiLabel: UILabel!
    
    var y: CGFloat = 100;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Randomly choose a sticker background color
    func randomColor() -> UIColor{
        let randomCol: Int = Int.random(in: 0 ..< 4);
        var color: UIColor;
        switch randomCol {   //pp. 45-47
        case 0:
            color = .yellow;
        case 1:
            color = .orange;
        case 2:
            color = .cyan;
        case 3:
            color = .green;
        default:
            color = .yellow;
        }
        return color;
    }
    
    //paste your quote sticker on the screen
    func updateUI(){
        let label: UILabel = UILabel();
        label.backgroundColor = randomColor();//yellow;
        label.numberOfLines = 0; //0 permits any number of lines
        label.text = uiText.text!
        y += 30;
        label.frame.origin = CGPoint(x: 100, y: y); //frame is a CGRect.
        label.frame.size = label.intrinsicContentSize; //needed if not using contents, intrinsicContentSize also means shrink wrapping, i.e. the cotainer is ec=xactly the size of the cintent
        print("label.frame = \(label.frame)"); //(100.0, 100.0, 169.0, 61.0)
        
        view.addSubview(label);
        
    }
    
    //call to action button
    @IBAction func uiButton(_ sender: UIButton) {
        print("uiButton");
        uiText.resignFirstResponder();
        updateUI();
        
    }
    
    
    
}

