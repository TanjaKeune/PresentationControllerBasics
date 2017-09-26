//
//  ViewController.swift
//  PresentationControllerBasics
//
//  Created by Tanja Keune on 9/25/17.
//  Copyright © 2017 SUGAPP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showDetails(_ sender: Any) {
        
        let ab = UIStoryboard(name: "Main", bundle: nil)
        
        let detailVC = ab.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
        detailVC.modalPresentationStyle = .popover
        
        let detailPopover = detailVC.popoverPresentationController!
        
        let sourceButton = sender as! UIBarButtonItem
        
        detailPopover.barButtonItem = sourceButton
        detailPopover.permittedArrowDirections = .any
        
        self.present(detailVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

