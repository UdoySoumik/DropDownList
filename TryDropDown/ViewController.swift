//
//  ViewController.swift
//  TryDropDown
//
//  Created by Salman Soumik on 7/11/18.
//  Copyright © 2018 soumik. All rights reserved.
//

import UIKit
import DropDown

class ViewController: UIViewController {

    @IBOutlet var dropButton: UIButton!
    var dropingTable = DropDown()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dropingTable.anchorView = self.dropButton
        dropingTable.bottomOffset = CGPoint(x: 0, y: dropButton.bounds.height)
        dropingTable.offsetFromWindowBottom = 10
        dropingTable.direction = DropDown.Direction.bottom
        dropingTable.dataSource = ["Hello","Hi","","","","","","","",""]
        dropingTable.selectionAction = { [weak self] (index,item) in
            self?.dropButton.setTitle(item, for: .normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dropButtonPressed(_ sender: UIButton) {
        dropingTable.show()
    }
    
}

