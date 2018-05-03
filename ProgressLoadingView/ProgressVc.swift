//
//  ProgressVc.swift
//  ProgressLoadingView
//
//  Created by Sadham Hussain on 3/14/17.
//  Copyright © 2017 CIPL. All rights reserved.
//

import UIKit

class ProgressVc: UIViewController {

    var progressText : String!
    
    @IBOutlet weak var lblProgressText: UILabel!
    @IBOutlet weak var myActivity: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Progress Vw Did load")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    func startProgressLoader(progressText: String){
        lblProgressText.text = progressText
        myActivity.startAnimating()
    }
    
    func stopProgressLoader(){
        myActivity.stopAnimating()
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
