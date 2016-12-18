//
//  ModalViewController1.swift
//  PresentingDemo
//
//  Created by Nicholas Outram on 14/01/2016.
//  Copyright © 2016 Plymouth University. All rights reserved.
//

import UIKit

//this is the protocool to save the image to the presenting view
protocol ModalViewController1Protocol : class {
    //func dismissWithStringData(_ str : String)
    func dismissWithImage(_ image : UIImage)
}

class ModalViewController1: UIViewController {
    
    //this is the photo of the presenting view
    var photo = UIImage.init(named: "picasso1")
  

    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    @IBOutlet var imageView: UIImageView!
    
    
    var titleText : String = "Default Title"
    
    weak var delegate : ModalViewController1Protocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = titleText
        imageView.image=photo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func doDismiss(_ sender: AnyObject) {
        
        count += 1
        //delegate?.dismissWithStringData("Message from DEMO 1 count=\(count)")
        //send the photo back to the presenting view
         delegate?.dismissWithImage(photo!)
    }

}
