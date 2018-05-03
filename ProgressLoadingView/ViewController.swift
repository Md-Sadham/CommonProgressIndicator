//
//  ViewController.swift
//  ProgressLoadingView
//
//  Created by Sadham Hussain on 3/14/17.
//  Copyright © 2017 CIPL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //
    var progressVwObj : ProgressVc!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createCustomProgressVwInstance()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // 
    @IBAction func ShowLoading(_ sender: UIButton) {
        
        if(sender.tag == 1){
            progressVwObj.progressText = "Loading..."
        }
        else if(sender.tag == 2){
            progressVwObj.progressText = "Please Wait..."
        }
        
        self.view.addSubview(progressVwObj.view)
        progressVwObj.startProgressLoader(progressText: progressVwObj.progressText)
        startTimer()
    }
    
    //
    func createCustomProgressVwInstance()
    {
        //Initialize customPicker
        progressVwObj = (self.storyboard?.instantiateViewController(withIdentifier: "ProgressVc")) as! ProgressVc
    }
    
    func startTimer ()
    {
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(removeProgressVw), userInfo: nil, repeats: false)
    }
    
    func removeProgressVw()
    {
        progressVwObj.stopProgressLoader()
        if progressVwObj != nil
        {
            progressVwObj.view.removeFromSuperview()
        }
    }
}

