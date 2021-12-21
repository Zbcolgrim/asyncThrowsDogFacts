//
//  ViewController.swift
//  Dog Facts
//
//  Created by Zachary Buffington on 12/20/21.
//

import UIKit

class ViewController: UIViewController {
let manager = FactManager()
    
    @IBOutlet weak var factLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func factButtonTapped(_ sender: Any) {
        Task {
            let facts = try await manager.fetchFacts()
            factLabel.text = facts.randomElement()?.fact
        }
        
    }
    
}

