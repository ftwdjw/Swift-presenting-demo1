//
//  ViewController.swift
//  PresentingDemo
//
//  Created by Nicholas Outram on 14/01/2016.
//  Copyright © 2016 Plymouth University. All rights reserved.
//

import UIKit

  var count = 0

//this is the presenting view controller

class ViewController: UIViewController, ModalViewController1Protocol {
    
    //load the inital photo
    var photo = UIImage.init(named: "picasso")
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image=photo
        print("view did load done")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //set up segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DEMO1" {
            
            if let vc = segue.destination as? ModalViewController1 {
                
                vc.titleText = "DEMO 1"
                vc.delegate = self
                print("segue done")
            }
            
        }
        
    }
    
    //Call back
    /*
    func dismissWithStringData(_ str: String) {
      self.dismiss(animated: true) {
         self.resultLabel.text = str
         print("dismiss with string done")
      }
    }
 */
    
      //Call back
    
    func dismissWithImage(_ image: UIImage) {
        self.dismiss(animated: true) {
            
            //load the new image from the presented view controller
            self.imageView.image = image
            print("dismiss with image done")
        }

    }

}

