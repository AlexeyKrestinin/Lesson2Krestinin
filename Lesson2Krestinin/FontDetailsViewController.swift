//
//  FontDetailsViewController.swift
//  Lesson2Krestinin
//
//  Created by Алексей Крестинин on 06.03.17.
//  Copyright © 2017 Alexey Krestinin. All rights reserved.
//

import UIKit

class FontDetailsViewController: UIViewController {

    
    @IBOutlet var fontDetailLabel: UILabel!
    
    
    
    var currentFont = "s"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
      fontDetailLabel.text = "Съешь этих мягких французских булок"
      fontDetailLabel.font = UIFont(name:currentFont, size: 14)
        print (currentFont)
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
