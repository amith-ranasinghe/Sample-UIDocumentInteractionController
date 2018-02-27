//
//  ViewController.swift
//  PPTTest
//
//  Created by Eight25media on 2/27/18.
//  Copyright © 2018 Amith Ranasinghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var documentInteractionController = UIDocumentInteractionController()
    var frame = CGRect()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "Presentations-Tips", withExtension: "ppt")
        print("URL : \(String(describing: url))")
        
        
        documentInteractionController = UIDocumentInteractionController(url: url!)
        frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        documentInteractionController.presentOpenInMenu(from: frame, in: self.view, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

